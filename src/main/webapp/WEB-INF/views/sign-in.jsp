<%@ page import="webapp.models.User" %>
<div class="row mt-5">
  <div class="col-lg-6 offset-lg-3">
    <div class="card">
      <div class="card-header bg-dark">
        <h5 class="card-title text-white">LOGIN NOW </h5>
      </div>
      <div class="card-body p-4">
        <form action="user/loginUser" method="post">
          <div class="form-group">
            <label for="email" class="form-label">Email</label>
            <input name="email" type="email" id="email" class="form-control inputFiled" placeholder="Enter your email">
          </div>
          <div class="form-group">
            <label for="password" class="form-label">Password</label>
            <input name="password" type="password" id="password" class="form-control inputFiled" placeholder="Enter your password">
          </div>
          <div class="form-group mt-3">
            <div class="col">
              <button class="btn btn-dark">SUBMIT</button>
            </div>
          </div>
          <div class="form-group">
            <div class="row mt-3">
              <div class="col">
                <a href="sign-up" class="nav-link">Don't have account? <span class="text-bold">Create</span></a>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>