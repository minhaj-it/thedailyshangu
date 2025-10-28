<?php

namespace Botble\Notice\Http\Controllers;

use Botble\Base\Http\Actions\DeleteResourceAction;
use Botble\Notice\Http\Requests\NoticeRequest;
use Botble\Notice\Models\Notice;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Notice\Tables\NoticeTable;
use Botble\Notice\Forms\NoticeForm;

class NoticeController extends BaseController
{
    public function __construct()
    {
        $this
            ->breadcrumb()
            ->add(trans(trans('plugins/notice::notice.name')), route('notice.index'));
    }

    public function index(NoticeTable $table)
    {
        $this->pageTitle(trans('plugins/notice::notice.name'));

        return $table->renderTable();
    }

    public function create()
    {
        $this->pageTitle(trans('plugins/notice::notice.create'));

        return NoticeForm::create()->renderForm();
    }

    public function store(NoticeRequest $request)
    {
        $form = NoticeForm::create()->setRequest($request);

        $form->save();

        return $this
            ->httpResponse()
            ->setPreviousUrl(route('notice.index'))
            ->setNextUrl(route('notice.edit', $form->getModel()->getKey()))
            ->setMessage(trans('core/base::notices.create_success_message'));
    }

    public function edit(Notice $notice)
    {
        $this->pageTitle(trans('core/base::forms.edit_item', ['name' => $notice->name]));

        return NoticeForm::createFromModel($notice)->renderForm();
    }

    public function update(Notice $notice, NoticeRequest $request)
    {
        NoticeForm::createFromModel($notice)
            ->setRequest($request)
            ->save();

        return $this
            ->httpResponse()
            ->setPreviousUrl(route('notice.index'))
            ->setMessage(trans('core/base::notices.update_success_message'));
    }

    public function destroy(Notice $notice)
    {
        return DeleteResourceAction::make($notice);
    }
}
