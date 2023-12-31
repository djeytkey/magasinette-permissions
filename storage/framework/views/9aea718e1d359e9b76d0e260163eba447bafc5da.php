 <?php $__env->startSection('content'); ?>

<?php if(session()->has('not_permitted')): ?>
  <div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button><?php echo e(session()->get('not_permitted')); ?></div> 
<?php endif; ?>
<section class="forms">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header d-flex align-items-center">
                        <h4><?php echo e(trans('file.Update User')); ?></h4>
                    </div>
                    <div class="card-body">
                        <p class="italic"><small><?php echo e(trans('file.The field labels marked with * are required input fields')); ?>.</small></p>
                        <?php echo Form::open(['route' => ['user.update', $lims_user_data->id], 'method' => 'put', 'files' => true]); ?>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label><strong><?php echo e(trans('file.LastName')); ?> * <small class="italic">(<?php echo e(trans('file.It will be used for withdrawal')); ?>)</small></strong> </label>
                                                <input type="text" name="last_name" required class="form-control" value="<?php echo e($lims_user_data->last_name); ?>">
                                                <?php if($errors->has('last_name')): ?>
                                                <span>
                                                    <strong class="has-error"><?php echo e($errors->first('name')); ?></strong>
                                                </span>
                                                <?php endif; ?>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label><strong><?php echo e(trans('file.FirstName')); ?> *</strong> </label>
                                                <input type="text" name="first_name" required class="form-control" value="<?php echo e($lims_user_data->first_name); ?>">
                                                <?php if($errors->has('first_name')): ?>
                                                <span>
                                                    <strong class="has-error"><?php echo e($errors->first('name')); ?></strong>
                                                </span>
                                                <?php endif; ?>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label><strong><?php echo e(trans('file.UserName')); ?> *</strong> </label>
                                                <input type="text" name="name" required class="form-control" value="<?php echo e($lims_user_data->name); ?>">
                                                <?php if($errors->has('name')): ?>
                                               <span>
                                                   <strong class="has-error"><?php echo e($errors->first('name')); ?></strong>
                                                </span>
                                                <?php endif; ?>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label><strong><?php echo e(trans('file.Change Password')); ?></strong> </label>
                                                <div class="input-group">
                                                    <input type="text" name="password" class="form-control">
                                                    <div class="input-group-append">
                                                        <button id="genbutton" type="button" class="btn btn-default"><?php echo e(trans('file.Generate')); ?></button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label><strong><?php echo e(trans('file.Email')); ?> *</strong></label>
                                                <input type="email" name="email" placeholder="example@example.com" required class="form-control" value="<?php echo e($lims_user_data->email); ?>">
                                                <?php if($errors->has('email')): ?>
                                               <span>
                                                   <strong class="has-error"><?php echo e($errors->first('email')); ?></strong>
                                                </span>
                                                <?php endif; ?>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label><strong><?php echo e(trans('file.Phone Number')); ?> *</strong></label>
                                                <input type="text" name="phone" required class="form-control" value="<?php echo e($lims_user_data->phone); ?>">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <?php if($lims_user_data->is_active): ?>
                                        <input class="mt-2" type="checkbox" id="is_active" name="is_active" value="1" checked>
                                        <?php else: ?>
                                        <input class="mt-2" type="checkbox" id="is_active" name="is_active" value="0">
                                        <?php endif; ?>
                                        <label class="mt-2"><strong><?php echo e(trans('file.Active')); ?></strong></label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label><strong><?php echo e(trans('file.Company Name')); ?></strong></label>
                                        <input type="text" name="company_name" class="form-control" value="<?php echo e($lims_user_data->company_name); ?>">
                                    </div>
                                    <div class="form-group">
                                        <label><strong><?php echo e(trans('file.Role')); ?> *</strong></label>
                                        <input type="hidden" name="role_id_hidden" value="<?php echo e($lims_user_data->role_id); ?>">
                                        <select name="role_id" required class="selectpicker form-control" data-live-search="true" title="Select Role...">
                                          <?php $__currentLoopData = $lims_role_list; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $role): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php if($role->id !== 5): ?>
                                            <option value="<?php echo e($role->id); ?>"><?php echo e($role->name); ?></option>
                                            <?php endif; ?>
                                          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label><strong><?php echo e(trans('file.Discount')); ?></strong></label>
                                        <input type="number" name="discount" step="0.01" class="form-control" value="<?php echo e($lims_user_data->discount); ?>">
                                    </div>
                                    <div class="form-group" id="biller-id">
                                        <label><strong><?php echo e(trans('file.Biller')); ?> *</strong></label>
                                        <input type="hidden" name="biller_id_hidden" value="<?php echo e($lims_user_data->biller_id); ?>">
                                        <select name="biller_id" class="selectpicker form-control" data-live-search="true" title="Select Biller...">
                                          <?php $__currentLoopData = $lims_biller_list; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $biller): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                              <option value="<?php echo e($biller->id); ?>"><?php echo e($biller->name); ?></option>
                                          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </select>
                                    </div>
                                    <div class="form-group" id="warehouseId">
                                        <label><strong><?php echo e(trans('file.Warehouse')); ?> *</strong></label>
                                        <input type="hidden" name="warehouse_id_hidden" value="<?php echo e($lims_user_data->warehouse_id); ?>">
                                        <select name="warehouse_id" class="selectpicker form-control" data-live-search="true" title="Select Warehouse...">
                                          <?php $__currentLoopData = $lims_warehouse_list; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $warehouse): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                              <option value="<?php echo e($warehouse->id); ?>"><?php echo e($warehouse->name); ?></option>
                                          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </select>
                                    </div>
                                </div>                              
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="submit" value="<?php echo e(trans('file.submit')); ?>" class="btn btn-primary">
                                    </div>
                                </div>
                            </div>
                        <?php echo Form::close(); ?>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<script type="text/javascript">
    $("ul#people").siblings('a').attr('aria-expanded','true');
    $("ul#people").addClass("show");
    $('#biller-id').hide();
    $('#warehouseId').hide();
    
    $("#is_active").change( function() {
        if ( $(this).is(":checked") ) {
            $(this).val("1");
        } else if ( $(this).not(":checked") ) {
            $(this).val("0");
        }
    });

    $('select[name=role_id]').val($("input[name='role_id_hidden']").val());
    if($('select[name=role_id]').val() > 2){
        //$('#warehouseId').show();
        $('select[name=warehouse_id]').val($("input[name='warehouse_id_hidden']").val());
        //$('#biller-id').show();
        $('select[name=biller_id]').val($("input[name='biller_id_hidden']").val());
    }
    $('.selectpicker').selectpicker('refresh');

    $('select[name="role_id"]').on('change', function() {
        if($(this).val() > 2){
            //$('select[name="warehouse_id"]').prop('required',true);
            //$('select[name="biller_id"]').prop('required',true);
            //$('#biller-id').show();
            //$('#warehouseId').show();
        }
        else{
            $('select[name="warehouse_id"]').prop('required',false);
            $('select[name="biller_id"]').prop('required',false);
            $('#biller-id').hide();
            $('#warehouseId').hide();
        }
    });

    $('#genbutton').on("click", function(){
      $.get('../genpass', function(data){
        $("input[name='password']").val(data);
      });
    });

</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/jbgz9206/test.magasinette.ma/resources/views/user/edit.blade.php ENDPATH**/ ?>