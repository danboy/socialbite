WysiHat.Toolbar.ButtonSets.Advanced = $A([
  { label: "Bold" },
  { label: "Underline" },
  { label: "Italic" },
  { label: "Ordered List",
    name: "ol",
    handler: function(editor) { editor.insertOrderedList();},
    query: function(editor) { return },
    toolTip: "this is the Ordered list message"
  },
  {
    name: "ul",
    label: "Unordered List",
    handler: function(editor) { editor.insertUnorderedList();},
    query: function(editor) { return }
  },
  {
    name: "link",
    label: "Add Link",
    handler: function(editor) { return editor.promptSelection(); }

  }

]);

Toolbar = Class.create(WysiHat.Toolbar, {
    createToolbarElement: function() {
      var toolbar = new Element('ul', { 'class': 'toolbar' });
      this.editor.insert({before: toolbar});
      return toolbar;
    },

    createButtonElement: function(toolbar, options) {
      var button = Element('li');
      var tooltip = new Element('span',{'class': 'tooltip',style: 'display:none;'}).update(options.get('toolTip'))
      button.update(options.get('label'));
      button.insert(tooltip,{position: 'after'});
      button.addClassName('button_' + options.get('name'));
      toolbar.appendChild(button);
      return button;
    },

    updateButtonState: function(element, name, state) {
      if (state)
        element.addClassName('highlight');
      else
        element.removeClassName('highlight');
    }
  });

var addOn = {
    promptSelection: function() {
      if (this.linkSelected()) {
        if (confirm("Remove link?"))
          this.unlinkSelection();
      } else {
        var value = prompt("Enter a URL", "http://www.google.com/");
        if (value)
          this.linkSelection(value);
      }
    }
  }


WysiHat.Editor.include(addOn);

