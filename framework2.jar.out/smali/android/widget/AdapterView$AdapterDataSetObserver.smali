.class Landroid/widget/AdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Landroid/widget/AdapterView;


# direct methods
.method constructor <init>(Landroid/widget/AdapterView;)V
    .locals 1

    .prologue
    .line 967
    .local p0, "this":Landroid/widget/AdapterView$AdapterDataSetObserver;, "Landroid/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    iput-object p1, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 969
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    .prologue
    .line 1014
    .local p0, "this":Landroid/widget/AdapterView$AdapterDataSetObserver;, "Landroid/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 1015
    return-void
.end method

.method public onChanged()V
    .locals 2

    .prologue
    .line 973
    .local p0, "this":Landroid/widget/AdapterView$AdapterDataSetObserver;, "Landroid/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 974
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    iget-object v1, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    iget v1, v1, Landroid/widget/AdapterView;->mItemCount:I

    iput v1, v0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 975
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    iget-object v1, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 979
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    iget v0, v0, Landroid/widget/AdapterView;->mOldItemCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    .line 981
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    iget-object v1, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    # invokes: Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    invoke-static {v0, v1}, Landroid/widget/AdapterView;->access$000(Landroid/widget/AdapterView;Landroid/os/Parcelable;)V

    .line 982
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 986
    :goto_0
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 987
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 988
    return-void

    .line 984
    :cond_0
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->rememberSyncState()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 6

    .prologue
    .local p0, "this":Landroid/widget/AdapterView$AdapterDataSetObserver;, "Landroid/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    const-wide/high16 v4, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 992
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 994
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    # invokes: Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;
    invoke-static {v0}, Landroid/widget/AdapterView;->access$100(Landroid/widget/AdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 1001
    :cond_0
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    iget-object v1, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    iget v1, v1, Landroid/widget/AdapterView;->mItemCount:I

    iput v1, v0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 1002
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    iput v3, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 1003
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    iput v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1004
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    iput-wide v4, v0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 1005
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    iput v2, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 1006
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    iput-wide v4, v0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 1007
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    iput-boolean v3, v0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1009
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 1010
    iget-object v0, p0, Landroid/widget/AdapterView$AdapterDataSetObserver;->this$0:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1011
    return-void
.end method
