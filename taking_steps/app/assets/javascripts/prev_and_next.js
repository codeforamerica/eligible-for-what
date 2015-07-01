/*
 * Provides 'Previous' and 'Next' button navigation for the questionnaire.
 */

$(document).ready(function() {
  var i = 1;
  var steps = $('.section');
  var number_of_steps = steps.length;

  // Hide the 'Previous' button for starters.
  var prev_button = $('button.btn-previous');
  prev_button.hide();

  var next_button = $('button.btn-next');

  // If there's only one step (or no steps), hide the nav buttons and ignore the
  // rest of this.
  if (number_of_steps <= 1) {
    next_button.hide();
    return
  }

  // Otherwise, hide the 'Submit' button and all but the first step.
  steps.hide();
  var submit_button = $('#btn-submit');
  submit_button.hide();

  var current_step = steps.first();
  current_step.show();

  // When the user clicks 'Next':
  next_button.click(function() {
    i++;
    prev_button.show();

    current_step.hide();
    current_step = current_step.next();
    // 'next_step' would be clearer but we don't really need another variable.
    current_step.show();

    if (i == number_of_steps) {
      next_button.hide();
      submit_button.show();
    }
  });

  // When the user clicks 'Previous':
  prev_button.click(function() {
    next_button.show();

    current_step.hide();
    // 'prev_step' would be clearer but we don't really need another variable.
    current_step = current_step.prev();
    current_step.show();

    if (i == number_of_steps) {
      submit_button.hide();
    }

    i--;

    if (i == 1) {
      prev_button.hide();
    }
  });

});
