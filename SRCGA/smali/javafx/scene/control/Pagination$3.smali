.class Ljavafx/scene/control/Pagination$3;
.super Ljavafx/beans/property/SimpleIntegerProperty;
.source "Pagination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/Pagination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/Pagination;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Pagination;Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 9

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Pagination$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Pagination;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move v4, p4

    .local v4, "x2":I
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/scene/control/Pagination$3;->this$0:Ljavafx/scene/control/Pagination;

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/SimpleIntegerProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bind(Ljavafx/beans/value/ObservableValue;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Pagination$3;
    move-object v1, p1

    .local v1, "rawObservable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljava/lang/Number;>;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "currentPageIndex supports only bidirectional binding"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Pagination$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Pagination$3;->this$0:Ljavafx/scene/control/Pagination;

    invoke-static {v1}, Ljavafx/scene/control/Pagination;->access$500(Ljavafx/scene/control/Pagination;)Ljavafx/beans/property/IntegerProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Pagination$3;->this$0:Ljavafx/scene/control/Pagination;

    invoke-virtual {v1}, Ljavafx/scene/control/Pagination;->getCurrentPageIndex()I

    move-result v1

    if-gez v1, :cond_1

    .line 252
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Pagination$3;->this$0:Ljavafx/scene/control/Pagination;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Pagination;->setCurrentPageIndex(I)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Pagination$3;->this$0:Ljavafx/scene/control/Pagination;

    invoke-virtual {v1}, Ljavafx/scene/control/Pagination;->getCurrentPageIndex()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Pagination$3;->this$0:Ljavafx/scene/control/Pagination;

    invoke-virtual {v2}, Ljavafx/scene/control/Pagination;->getPageCount()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_0

    .line 254
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Pagination$3;->this$0:Ljavafx/scene/control/Pagination;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Pagination$3;->this$0:Ljavafx/scene/control/Pagination;

    invoke-virtual {v2}, Ljavafx/scene/control/Pagination;->getPageCount()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Pagination;->setCurrentPageIndex(I)V

    goto :goto_0
.end method
