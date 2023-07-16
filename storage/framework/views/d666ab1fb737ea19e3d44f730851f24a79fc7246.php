
<?php $__env->startSection('content'); ?>
    <?php if(session()->has('not_permitted')): ?>
        <div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert"
                aria-label="Close"><span aria-hidden="true">&times;</span></button><?php echo e(session()->get('not_permitted')); ?></div>
    <?php endif; ?>
    <section class="forms">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header d-flex align-items-center">
                            <h4><?php echo e(trans('file.Group Permission')); ?></h4>
                        </div>
                        <?php echo Form::open(['route' => 'role.setPermission', 'method' => 'post']); ?>

                        <div class="card-body">
                            <input type="hidden" name="role_id" value="<?php echo e($lims_role_data->id); ?>" />
                            <div class="table-responsive">
                                <table class="table table-bordered permission-table role-table">
                                    <thead>
                                        <tr>
                                            <th colspan="6" class="text-center"><?php echo e($lims_role_data->name); ?>

                                                <?php echo e(trans('file.Group Permission')); ?></th>
                                        </tr>
                                        <tr>
                                            <th rowspan="2" class="fit text-center">Module Name</th>
                                            <th colspan="5" class="fit text-center">
                                                <div class="checkbox">
                                                    <input type="checkbox" id="select_all">
                                                    <label for="select_all"><?php echo e(trans('file.Permissions')); ?></label>
                                                </div>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th class="fit text-center"><?php echo e(trans('file.View')); ?></th>
                                            <th class="fit text-center"><?php echo e(trans('file.add')); ?></th>
                                            <th class="fit text-center"><?php echo e(trans('file.edit')); ?></th>
                                            <th class="fit text-center"><?php echo e(trans('file.delete')); ?></th>
                                            <th class="fit text-center"><?php echo e(trans('file.Export Buttons')); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                        <tr>
                                            <td><?php echo e(trans('file.product')); ?></td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue checked" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('products-index', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="products-index"
                                                                name="products-index" checked />
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="products-index"
                                                                name="products-index" />
                                                        <?php endif; ?>
                                                        <label for="products-index"></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('products-add', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="products-add"
                                                                name="products-add" checked>
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="products-add"
                                                                name="products-add">
                                                        <?php endif; ?>
                                                        <label for="products-add"></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('products-edit', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="products-edit"
                                                                name="products-edit" checked />
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="products-edit"
                                                                name="products-edit" />
                                                        <?php endif; ?>
                                                        <label for="products-edit"></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('products-delete', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="products-delete"
                                                                name="products-delete" checked />
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="products-delete"
                                                                name="products-delete" />
                                                        <?php endif; ?>
                                                        <label for="products-delete"></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('products-export', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="products-export"
                                                                name="products-export" checked />
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="products-export"
                                                                name="products-export" />
                                                        <?php endif; ?>
                                                        <label for="products-export"></label>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>

                                        
                                        <tr>
                                            <td><?php echo e(trans('file.category')); ?></td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue checked" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('categories-index', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="categories-index"
                                                                name="categories-index" checked />
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="categories-index"
                                                                name="categories-index" />
                                                        <?php endif; ?>
                                                        <label for="categories-index"></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('categories-add', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="categories-add"
                                                                name="categories-add" checked>
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="categories-add"
                                                                name="categories-add">
                                                        <?php endif; ?>
                                                        <label for="categories-add"></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('categories-edit', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="categories-edit"
                                                                name="categories-edit" checked />
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="categories-edit"
                                                                name="categories-edit" />
                                                        <?php endif; ?>
                                                        <label for="categories-edit"></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('categories-delete', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="categories-delete"
                                                                name="categories-delete" checked />
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="categories-delete"
                                                                name="categories-delete" />
                                                        <?php endif; ?>
                                                        <label for="categories-delete"></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('categories-export', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="categories-export"
                                                                name="categories-export" checked />
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="categories-export"
                                                                name="categories-export" />
                                                        <?php endif; ?>
                                                        <label for="categories-export"></label>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>

                                        
                                        <tr>
                                            <td><?php echo e(trans('file.Purchase')); ?></td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('purchases-index', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="purchases-index"
                                                                name="purchases-index" checked>
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="purchases-index"
                                                                name="purchases-index">
                                                        <?php endif; ?>
                                                        <label for="purchases-index"></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('purchases-add', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="purchases-add"
                                                                name="purchases-add" checked>
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="purchases-add"
                                                                name="purchases-add">
                                                        <?php endif; ?>
                                                        <label for="purchases-add"></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('purchases-edit', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="purchases-edit"
                                                                name="purchases-edit" checked />
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="purchases-edit"
                                                                name="purchases-edit">
                                                        <?php endif; ?>
                                                        <label for="purchases-edit"></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('purchases-delete', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="purchases-delete"
                                                                name="purchases-delete" checked>
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="purchases-delete"
                                                                name="purchases-delete">
                                                        <?php endif; ?>
                                                        <label for="purchases-delete"></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('purchases-export', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="purchases-export"
                                                                name="purchases-export" checked>
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="purchases-export"
                                                                name="purchases-export">
                                                        <?php endif; ?>
                                                        <label for="purchases-export"></label>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>

                                        
                                        <tr>
                                            <td><?php echo e(trans('file.Sale')); ?></td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue checked" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('sales-index', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="sales-index"
                                                                name="sales-index" checked />
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="sales-index"
                                                                name="sales-index">
                                                        <?php endif; ?>
                                                        <label for="sales-index"></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue checked" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('sales-add', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="sales-add"
                                                                name="sales-add" checked />
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="sales-add"
                                                                name="sales-add">
                                                        <?php endif; ?>
                                                        <label for="sales-add"></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('sales-edit', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="sales-edit"
                                                                name="sales-edit" checked>
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="sales-edit"
                                                                name="sales-edit">
                                                        <?php endif; ?>
                                                        <label for="sales-edit"></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('sales-delete', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="sales-delete"
                                                                name="sales-delete" checked>
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="sales-delete"
                                                                name="sales-delete">
                                                        <?php endif; ?>
                                                        <label for="sales-delete"></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('sales-export', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="sales-export"
                                                                name="sales-export" checked>
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="sales-export"
                                                                name="sales-export">
                                                        <?php endif; ?>
                                                        <label for="sales-export"><?php echo e(trans('file.Exports')); ?></label>
                                                    </div>
                                                </div>
                                                <div class="icheckbox_square-blue" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('sales-add-discount', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="sales-add-discount"
                                                                name="sales-add-discount" checked>
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="sales-add-discount"
                                                                name="sales-add-discount">
                                                        <?php endif; ?>
                                                        <label for="sales-add-discount"><?php echo e(trans('file.Add Discount')); ?></label>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>

                                        
                                        <tr>
                                            <td><?php echo e(trans('file.Delivery')); ?></td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue checked" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('delivery-index', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="delivery-index"
                                                                name="delivery-index" checked />
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="delivery-index"
                                                                name="delivery-index">
                                                        <?php endif; ?>
                                                        <label for="delivery-index"></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue checked" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('delivery-add', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="delivery-add"
                                                                name="delivery-add" checked />
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="delivery-add"
                                                                name="delivery-add">
                                                        <?php endif; ?>
                                                        <label for="delivery-add"></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center"></td>
                                            <td class="text-center"></td>
                                            <td class="text-center"></td>                                            
                                        </tr>

                                        
                                        

                                        
                                        

                                        
                                        

                                        
                                        

                                        
                                        <tr>
                                            <td><?php echo e(trans('file.User')); ?></td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue checked" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('users-index', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="users-index"
                                                                name="users-index" checked>
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="users-index"
                                                                name="users-index">
                                                        <?php endif; ?>
                                                        <label for="users-index"></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue checked" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('users-add', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="users-add"
                                                                name="users-add" checked>
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="users-add"
                                                                name="users-add">
                                                        <?php endif; ?>
                                                        <label for="users-add"></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue checked" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('users-edit', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="users-edit"
                                                                name="users-edit" checked>
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="users-edit"
                                                                name="users-edit">
                                                        <?php endif; ?>
                                                        <label for="users-edit"></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('users-delete', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="users-delete"
                                                                name="users-delete" checked>
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="users-delete"
                                                                name="users-delete">
                                                        <?php endif; ?>
                                                        <label for="users-delete"></label>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>

                                        
                                        

                                        
                                        

                                        
                                        <tr>
                                            <td><?php echo e(trans('file.Supplier')); ?></td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('suppliers-index', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="suppliers-index"
                                                                name="suppliers-index" checked>
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="suppliers-index"
                                                                name="suppliers-index">
                                                        <?php endif; ?>
                                                        <label for="suppliers-index"></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('suppliers-add', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="suppliers-add"
                                                                name="suppliers-add" checked>
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="suppliers-add"
                                                                name="suppliers-add">
                                                        <?php endif; ?>
                                                        <label for="suppliers-add"></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('suppliers-edit', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="suppliers-edit"
                                                                name="suppliers-edit" checked>
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="suppliers-edit"
                                                                name="suppliers-edit">
                                                        <?php endif; ?>
                                                        <label for="suppliers-edit"></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('suppliers-delete', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="suppliers-delete"
                                                                name="suppliers-delete" checked>
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="suppliers-delete"
                                                                name="suppliers-delete">
                                                        <?php endif; ?>
                                                        <label for="suppliers-delete"></label>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>

                                        
                                        <tr>
                                            <td><?php echo e(trans('file.Withdraw')); ?></td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue checked" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('withdraw-index', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="withdraw-index"
                                                                name="withdraw-index" checked />
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="withdraw-index"
                                                                name="withdraw-index">
                                                        <?php endif; ?>
                                                        <label for="withdraw-index"><?php echo e(trans('file.Withdraw List')); ?></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue checked" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('withdraw-facturation', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="withdraw-facturation"
                                                                name="withdraw-facturation" checked />
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="withdraw-facturation"
                                                                name="withdraw-facturation">
                                                        <?php endif; ?>
                                                        <label for="withdraw-facturation"><?php echo e(trans('file.Facturation')); ?></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('withdraw-demandes', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="withdraw-demandes"
                                                                name="withdraw-demandes" checked>
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="withdraw-demandes"
                                                                name="withdraw-demandes">
                                                        <?php endif; ?>
                                                        <label for="withdraw-demandes"><?php echo e(trans('file.Demandes de retrait')); ?></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue checked" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('withdraw-add', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="withdraw-add"
                                                                name="withdraw-add" checked />
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="withdraw-add"
                                                                name="withdraw-add">
                                                        <?php endif; ?>
                                                        <label for="withdraw-add"><?php echo e(trans('file.Demander Un Retrait')); ?></label>
                                                    </div>
                                                </div>
                                            </td>                                            
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('withdraw-index-pay', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="withdraw-index-pay"
                                                                name="withdraw-index-pay" checked>
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="withdraw-index-pay"
                                                                name="withdraw-index-pay">
                                                        <?php endif; ?>
                                                        <label for="withdraw-index-pay"><?php echo e(trans('file.Valider paiement')); ?></label>
                                                    </div>
                                                </div>
                                                <div class="icheckbox_square-blue" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('withdraw-fact-pay', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="withdraw-fact-pay"
                                                                name="withdraw-fact-pay" checked>
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="withdraw-fact-pay"
                                                                name="withdraw-fact-pay">
                                                        <?php endif; ?>
                                                        <label for="withdraw-fact-pay"><?php echo e(trans('file.Valider facture')); ?></label>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        </tr>

                                        
                                        <tr>
                                            <td><?php echo e(trans('file.Referral')); ?></td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue checked" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('referral-index', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="referral-index"
                                                                name="referral-index" checked />
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="referral-index"
                                                                name="referral-index">
                                                        <?php endif; ?>
                                                        <label for="referral-index"><?php echo e(trans('file.Referral List')); ?></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue checked" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('referral-facturation', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="referral-facturation"
                                                                name="referral-facturation" checked />
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="referral-facturation"
                                                                name="referral-facturation">
                                                        <?php endif; ?>
                                                        <label for="referral-facturation"><?php echo e(trans('file.Facturation')); ?></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue checked" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('referral-add', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="referral-add"
                                                                name="referral-add" checked />
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="referral-add"
                                                                name="referral-add">
                                                        <?php endif; ?>
                                                        <label for="referral-add"><?php echo e(trans('file.Add Referral')); ?></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="icheckbox_square-blue" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('referral-index-pay', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="referral-index-pay"
                                                                name="referral-index-pay" checked>
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="referral-index-pay"
                                                                name="referral-index-pay">
                                                        <?php endif; ?>
                                                        <label for="referral-index-pay"><?php echo e(trans('file.Valider paiement')); ?></label>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">                                                
                                                <div class="icheckbox_square-blue" aria-checked="false"
                                                    aria-disabled="false">
                                                    <div class="checkbox">
                                                        <?php if(in_array('referral-fact-pay', $all_permission)): ?>
                                                            <input type="checkbox" value="1" id="referral-fact-pay"
                                                                name="referral-fact-pay" checked>
                                                        <?php else: ?>
                                                            <input type="checkbox" value="1" id="referral-fact-pay"
                                                                name="referral-fact-pay">
                                                        <?php endif; ?>
                                                        <label for="referral-fact-pay"><?php echo e(trans('file.Valider facture')); ?></label>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>

                                        
                                        
                                                
                                                

                                        
                                        

                                        
                                        <tr>
                                            <td><?php echo e(trans('file.Reports')); ?></td>
                                            <td class="report-permissions" colspan="5">
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('profit-loss', $all_permission)): ?>
                                                                <input type="checkbox" value="1" id="profit-loss"
                                                                    name="profit-loss" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1" id="profit-loss"
                                                                    name="profit-loss">
                                                            <?php endif; ?>
                                                            <label for="profit-loss"
                                                                class="padding05"><?php echo e(trans('file.Summary Report')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('best-seller', $all_permission)): ?>
                                                                <input type="checkbox" value="1" id="best-seller"
                                                                    name="best-seller" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1" id="best-seller"
                                                                    name="best-seller">
                                                            <?php endif; ?>
                                                            <label for="best-seller"
                                                                class="padding05"><?php echo e(trans('file.Best Seller')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('daily-sale', $all_permission)): ?>
                                                                <input type="checkbox" value="1" id="daily-sale"
                                                                    name="daily-sale" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1" id="daily-sale"
                                                                    name="daily-sale">
                                                            <?php endif; ?>
                                                            <label for="daily-sale"
                                                                class="padding05"><?php echo e(trans('file.Daily Sale')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('monthly-sale', $all_permission)): ?>
                                                                <input type="checkbox" value="1" id="monthly-sale"
                                                                    name="monthly-sale" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1" id="monthly-sale"
                                                                    name="monthly-sale">
                                                            <?php endif; ?>
                                                            <label for="monthly-sale"
                                                                class="padding05"><?php echo e(trans('file.Monthly Sale')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('daily-purchase', $all_permission)): ?>
                                                                <input type="checkbox" value="1" id="daily-purchase"
                                                                    name="daily-purchase" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1" id="daily-purchase"
                                                                    name="daily-purchase">
                                                            <?php endif; ?>
                                                            <label for="daily-purchase"
                                                                class="padding05"><?php echo e(trans('file.Daily Purchase')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('monthly-purchase', $all_permission)): ?>
                                                                <input type="checkbox" value="1"
                                                                    id="monthly-purchase" name="monthly-purchase" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1"
                                                                    id="monthly-purchase" name="monthly-purchase">
                                                            <?php endif; ?>
                                                            <label for="monthly-purchase"
                                                                class="padding05"><?php echo e(trans('file.Monthly Purchase')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('product-report', $all_permission)): ?>
                                                                <input type="checkbox" value="1" id="product-report"
                                                                    name="product-report" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1" id="product-report"
                                                                    name="product-report">
                                                            <?php endif; ?>
                                                            <label for="product-report"
                                                                class="padding05"><?php echo e(trans('file.Product Report')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('payment-report', $all_permission)): ?>
                                                                <input type="checkbox" value="1" id="payment-report"
                                                                    name="payment-report" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1" id="payment-report"
                                                                    name="payment-report">
                                                            <?php endif; ?>
                                                            <label for="payment-report"
                                                                class="padding05"><?php echo e(trans('file.Payment Report')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('purchase-report', $all_permission)): ?>
                                                                <input type="checkbox" value="1"
                                                                    id="purchase-report" name="purchase-report" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1"
                                                                    id="purchase-report" name="purchase-report">
                                                            <?php endif; ?>
                                                            <label for="purchase-report" class="padding05">
                                                                <?php echo e(trans('file.Purchase Report')); ?> &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('sale-report', $all_permission)): ?>
                                                                <input type="checkbox" value="1" id="sale-report"
                                                                    name="sale-report" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1" id="sale-report"
                                                                    name="sale-report">
                                                            <?php endif; ?>
                                                            <label for="sale-report"
                                                                class="padding05"><?php echo e(trans('file.Sale Report')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('warehouse-report', $all_permission)): ?>
                                                                <input type="checkbox" value="1"
                                                                    id="warehouse-report" name="warehouse-report" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1"
                                                                    id="warehouse-report" name="warehouse-report">
                                                            <?php endif; ?>
                                                            <label for="warehouse-report"
                                                                class="padding05"><?php echo e(trans('file.Warehouse Report')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('warehouse-stock-report', $all_permission)): ?>
                                                                <input type="checkbox" value="1"
                                                                    id="warehouse-stock-report"
                                                                    name="warehouse-stock-report" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1"
                                                                    id="warehouse-stock-report"
                                                                    name="warehouse-stock-report">
                                                            <?php endif; ?>
                                                            <label for="warehouse-stock-report"
                                                                class="padding05"><?php echo e(trans('file.Warehouse Stock Chart')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('product-qty-alert', $all_permission)): ?>
                                                                <input type="checkbox" value="1"
                                                                    id="product-qty-alert" name="product-qty-alert"
                                                                    checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1"
                                                                    id="product-qty-alert" name="product-qty-alert">
                                                            <?php endif; ?>
                                                            <label for="product-qty-alert"
                                                                class="padding05"><?php echo e(trans('file.Product Quantity Alert')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('user-report', $all_permission)): ?>
                                                                <input type="checkbox" value="1" id="user-report"
                                                                    name="user-report" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1" id="user-report"
                                                                    name="user-report">
                                                            <?php endif; ?>
                                                            <label for="user-report"
                                                                class="padding05"><?php echo e(trans('file.User Report')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('customer-report', $all_permission)): ?>
                                                                <input type="checkbox" value="1"
                                                                    id="customer-report" name="customer-report" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1"
                                                                    id="customer-report" name="customer-report">
                                                            <?php endif; ?>
                                                            <label for="customer-report"
                                                                class="padding05"><?php echo e(trans('file.Customer Report')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('supplier-report', $all_permission)): ?>
                                                                <input type="checkbox" value="1"
                                                                    id="supplier-report" name="supplier-report" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1"
                                                                    id="supplier-report" name="supplier-report">
                                                            <?php endif; ?>
                                                            <label for="Supplier-report"
                                                                class="padding05"><?php echo e(trans('file.Supplier Report')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('due-report', $all_permission)): ?>
                                                                <input type="checkbox" value="1" id="due-report"
                                                                    name="due-report" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1" id="due-report"
                                                                    name="due-report">
                                                            <?php endif; ?>
                                                            <label for="due-report"
                                                                class="padding05"><?php echo e(trans('file.Due Report')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                            </td>
                                        </tr>

                                        
                                        <tr>
                                            <td><?php echo e(trans('file.settings')); ?></td>
                                            <td class="report-permissions" colspan="5">
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('send_notification', $all_permission)): ?>
                                                                <input type="checkbox" value="1"
                                                                    id="send_notification" name="send_notification"
                                                                    checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1"
                                                                    id="send_notification" name="send_notification">
                                                            <?php endif; ?>
                                                            <label for="send_notification"
                                                                class="padding05"><?php echo e(trans('file.Send Notification')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('warehouse', $all_permission)): ?>
                                                                <input type="checkbox" value="1" id="warehouse"
                                                                    name="warehouse" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1" id="warehouse"
                                                                    name="warehouse">
                                                            <?php endif; ?>
                                                            <label for="warehouse"
                                                                class="padding05"><?php echo e(trans('file.Warehouse')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('customer_group', $all_permission)): ?>
                                                                <input type="checkbox" value="1" id="customer_group"
                                                                    name="customer_group" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1" id="customer_group"
                                                                    name="customer_group">
                                                            <?php endif; ?>
                                                            <label for="customer_group"
                                                                class="padding05"><?php echo e(trans('file.Customer Group')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('brand', $all_permission)): ?>
                                                                <input type="checkbox" value="1" id="brand"
                                                                    name="brand" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1" id="brand"
                                                                    name="brand">
                                                            <?php endif; ?>
                                                            <label for="brand"
                                                                class="padding05"><?php echo e(trans('file.Brand')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('unit', $all_permission)): ?>
                                                                <input type="checkbox" value="1" id="unit"
                                                                    name="unit" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1" id="unit"
                                                                    name="unit">
                                                            <?php endif; ?>
                                                            <label for="unit"
                                                                class="padding05"><?php echo e(trans('file.Unit')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('currency', $all_permission)): ?>
                                                                <input type="checkbox" value="1" id="currency"
                                                                    name="currency" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1" id="currency"
                                                                    name="currency">
                                                            <?php endif; ?>
                                                            <label for="currency"
                                                                class="padding05"><?php echo e(trans('file.Currency')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('tax', $all_permission)): ?>
                                                                <input type="checkbox" value="1" id="tax"
                                                                    name="tax" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1" id="tax"
                                                                    name="tax">
                                                            <?php endif; ?>
                                                            <label for="tax"
                                                                class="padding05"><?php echo e(trans('file.Tax')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('backup_database', $all_permission)): ?>
                                                                <input type="checkbox" value="1"
                                                                    id="backup_database" name="backup_database" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1"
                                                                    id="backup_database" name="backup_database">
                                                            <?php endif; ?>
                                                            <label for="backup_database"
                                                                class="padding05"><?php echo e(trans('file.Backup Database')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('general_setting', $all_permission)): ?>
                                                                <input type="checkbox" value="1"
                                                                    id="general_setting" name="general_setting" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1"
                                                                    id="general_setting" name="general_setting">
                                                            <?php endif; ?>
                                                            <label for="general_setting"
                                                                class="padding05"><?php echo e(trans('file.General Setting')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('mail_setting', $all_permission)): ?>
                                                                <input type="checkbox" value="1"
                                                                    id="mail_setting" name="mail_setting" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1"
                                                                    id="mail_setting" name="mail_setting">
                                                            <?php endif; ?>
                                                            <label for="mail_setting"
                                                                class="padding05"><?php echo e(trans('file.Mail Setting')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('sms_setting', $all_permission)): ?>
                                                                <input type="checkbox" value="1" id="sms_setting"
                                                                    name="sms_setting" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1" id="sms_setting"
                                                                    name="sms_setting">
                                                            <?php endif; ?>
                                                            <label for="sms_setting"
                                                                class="padding05"><?php echo e(trans('file.SMS Setting')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('create_sms', $all_permission)): ?>
                                                                <input type="checkbox" value="1" id="create_sms"
                                                                    name="create_sms" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1" id="create_sms"
                                                                    name="create_sms">
                                                            <?php endif; ?>
                                                            <label for="create_sms"
                                                                class="padding05"><?php echo e(trans('file.Create SMS')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('pos_setting', $all_permission)): ?>
                                                                <input type="checkbox" value="1" id="pos_setting"
                                                                    name="pos_setting" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1" id="pos_setting"
                                                                    name="pos_setting">
                                                            <?php endif; ?>
                                                            <label for="pos_setting"
                                                                class="padding05"><?php echo e(trans('file.POS Setting')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('hrm_setting', $all_permission)): ?>
                                                                <input type="checkbox" value="1" id="hrm_setting"
                                                                    name="hrm_setting" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1" id="hrm_setting"
                                                                    name="hrm_setting">
                                                            <?php endif; ?>
                                                            <label for="hrm_setting"
                                                                class="padding05"><?php echo e(trans('file.HRM Setting')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                            </td>
                                        </tr>

                                        
                                        <tr>
                                            <td><?php echo e(trans('file.Miscellaneous')); ?></td>
                                            <td class="report-permissions" colspan="5">
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('category', $all_permission)): ?>
                                                                <input type="checkbox" value="1" id="category"
                                                                    name="category" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1" id="category"
                                                                    name="category">
                                                            <?php endif; ?>
                                                            <label for="category"
                                                                class="padding05"><?php echo e(trans('file.category')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('delivery', $all_permission)): ?>
                                                                <input type="checkbox" value="1" id="delivery"
                                                                    name="delivery" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1" id="delivery"
                                                                    name="delivery">
                                                            <?php endif; ?>
                                                            <label for="delivery"
                                                                class="padding05"><?php echo e(trans('file.Delivery')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('stock_count', $all_permission)): ?>
                                                                <input type="checkbox" value="1" id="stock_count"
                                                                    name="stock_count" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1" id="stock_count"
                                                                    name="stock_count">
                                                            <?php endif; ?>
                                                            <label for="stock_count"
                                                                class="padding05"><?php echo e(trans('file.Stock Count')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('adjustment', $all_permission)): ?>
                                                                <input type="checkbox" value="1" id="adjustment"
                                                                    name="adjustment" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1" id="adjustment"
                                                                    name="adjustment">
                                                            <?php endif; ?>
                                                            <label for="adjustment"
                                                                class="padding05"><?php echo e(trans('file.Adjustment')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('gift_card', $all_permission)): ?>
                                                                <input type="checkbox" value="1" id="gift_card"
                                                                    name="gift_card" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1" id="gift_card"
                                                                    name="gift_card">
                                                            <?php endif; ?>
                                                            <label for="gift_card"
                                                                class="padding05"><?php echo e(trans('file.Gift Card')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('coupon', $all_permission)): ?>
                                                                <input type="checkbox" value="1" id="coupon"
                                                                    name="coupon" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1" id="coupon"
                                                                    name="coupon">
                                                            <?php endif; ?>
                                                            <label for="coupon"
                                                                class="padding05"><?php echo e(trans('file.Coupon')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('print_barcode', $all_permission)): ?>
                                                                <input type="checkbox" value="1"
                                                                    id="print_barcode" name="print_barcode" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1"
                                                                    id="print_barcode" name="print_barcode">
                                                            <?php endif; ?>
                                                            <label for="print_barcode"
                                                                class="padding05"><?php echo e(trans('file.print_barcode')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('empty_database', $all_permission)): ?>
                                                                <input type="checkbox" value="1"
                                                                    id="empty_database" name="empty_database" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1"
                                                                    id="empty_database" name="empty_database">
                                                            <?php endif; ?>
                                                            <label for="empty_database"
                                                                class="padding05"><?php echo e(trans('file.Empty Database')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('today_sale', $all_permission)): ?>
                                                                <input type="checkbox" value="1" id="today_sale"
                                                                    name="today_sale" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1" id="today_sale"
                                                                    name="today_sale">
                                                            <?php endif; ?>
                                                            <label for="today_sale"
                                                                class="padding05"><?php echo e(trans('file.Today Sale')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                                <span>
                                                    <div aria-checked="false" aria-disabled="false">
                                                        <div class="checkbox">
                                                            <?php if(in_array('today_profit', $all_permission)): ?>
                                                                <input type="checkbox" value="1"
                                                                    id="today_profit" name="today_profit" checked>
                                                            <?php else: ?>
                                                                <input type="checkbox" value="1"
                                                                    id="today_profit" name="today_profit">
                                                            <?php endif; ?>
                                                            <label for="today_profit"
                                                                class="padding05"><?php echo e(trans('file.Today Profit')); ?>

                                                                &nbsp;&nbsp;</label>
                                                        </div>
                                                    </div>
                                                </span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="<?php echo e(trans('file.submit')); ?>" class="btn btn-primary">
                            </div>
                        </div>
                        <?php echo Form::close(); ?>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <script type="text/javascript">
        $("ul#setting").siblings('a').attr('aria-expanded', 'true');
        $("ul#setting").addClass("show");
        $("ul#setting #role-menu").addClass("active");

        $("#select_all").on("change", function() {
            if ($(this).is(':checked')) {
                $("tbody input[type='checkbox']").prop('checked', true);
            } else {
                $("tbody input[type='checkbox']").prop('checked', false);
            }
        });
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layout.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\magasinette\resources\views/role/permission.blade.php ENDPATH**/ ?>