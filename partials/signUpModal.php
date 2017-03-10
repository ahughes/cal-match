<?php echo '

<div class="modal fade" id="signUpModal" tabindex="-1" role="dialog" aria-labelledby="signUpModal" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Sign Up</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="signUpForm">
          <div class="form-group">
            <div class="form-inline">
              <input type="text" class="form-control" id="signUpFirst" placeholder="First Name">
              &nbsp;&nbsp;&nbsp;&nbsp;
              <input type="text" class="form-control" id="signUpLast" placeholder="Last Name">
            </div>
          </div>
          <div class="form-group">
            <input type="email" class="form-control" id="signUpEmail" placeholder="Email">
            <div class="form-control-feedback" hidden>Invalid email address.</div>
          </div>
          <div class="form-group">
            <input type="text" class="form-control" id="signUpPhone" placeholder="Telephone">
          </div>
          <fieldset>
            <div class="form-group float-right">
              <button type="submit" class="btn btn-primary">Sign Up&nbsp;&nbsp;<i class="fa fa-user-plus"></i></button>
            </div>
          </fieldset>
        </form>
      </div>
    </div>
  </div>
</div>

'; ?>