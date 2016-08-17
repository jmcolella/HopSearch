var Header = React.createClass({
  render: function () {
    return (
      <div>
        <h1 className={this.props.classes}>{this.props.headerTitle}</h1>

        <div className="border"></div>
      </div>
    )
  }
});