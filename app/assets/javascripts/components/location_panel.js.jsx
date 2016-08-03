var LocationPanel = React.createClass({
  render: function() {
    return (
      <div className="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
        <div className="panel panel-default">
          <div className="panel-heading" role="tab" id={"heading" + this.props.index}>
            <h4 className="panel-title">
              <a role="button" data-toggle="collapse" data-parent="#accordion" href={"#collapse" + this.props.index} aria-expanded="false" aria-controls={"collapse" + this.props.index} className="panel-header collapsed">
                { this.props.data.name }
              </a>
            </h4>
          </div>
          <div id={"collapse" + this.props.index} className="panel-collapse collapse" role="tabpanel" aria-labelledby={"heading"+ this.props.index}>
            <div className="panel-body">
              { this.props.data.description }
            </div>
          </div>
        </div>
      </div>
    )
  }
});