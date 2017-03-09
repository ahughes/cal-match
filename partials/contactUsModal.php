<?php echo '

<div class="modal fade" id="contactUs" tabindex="-1" role="dialog" aria-labelledby="contactUsModal" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Contact Us</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="contactUs">
      <div class="form-group">
        <input type="text" class="form-control" id="inputName" placeholder="Name">
      </div>
      <div class="form-group" id="emailInput">
        <input type="email" class="form-control" id="inputEmail" placeholder="Email">
        <div class="form-control-feedback" hidden>Invalid email address.</div>
      </div>
      <div class="form-group">
        <textarea class="form-control" id="inputMessage" placeholder="Message" rows="3"></textarea>
      </div>
      <fieldset id="validSend" disabled>
      <div class="form-group float-right">
        <span id="reqMsg">All fields are required.</span>
        <button type="submit" class="btn btn-primary">Send <i class="fa fa-paper-plane-o"></i></button>
      </div>
      </fieldset>
    </form>
      </div>
    </div>
  </div>
</div>

'; ?>