@ParticipantsList = React.createClass(
  
  componentWillReceiveProps: (nextProps) ->
    current_participants = this.state.participants
    updated_participants = current_participants

    addOrUpdateParticipant =(new_participant) ->
      existing_participant_index = _.findIndex(current_participants, (current_participant) ->
          current_participant.uuid is new_participant.uuid
      )
      if existing_participant_index?
        new_name = if new_participant.name? then new_participant.name else current_participants[existing_participant_index].name 
        new_email = if new_participant.email? then new_participant.email else current_participants[existing_participant_index].email 

        new_participant = {uuid: new_participant.uuid, name: new_name, status: new_participant.status, email: new_email  }
        current_participants[existing_participant_index] = new_participant
      else
        updated_participants.push(new_participant)

    _.each nextProps.participants, (participant) ->
        addOrUpdateParticipant(participant)
    
    this.setState
        participants: updated_participants

  getInitialState: ->
    participants: this.props.participants 
  render: ->
      <div className="panel panel-default">
          <div className="panel-heading c-list">
                    <span className="c-title">Participants ({countOnlineParticipants(this.state.participants)} online)</span>
          </div>

          <ul className="list-group" >
            {
                this.state.participants.map( (participant)->
                    <ParticipantStatus key={participant.uuid} participant={participant} />
                )
            }
          </ul>
      </div>
    
)
