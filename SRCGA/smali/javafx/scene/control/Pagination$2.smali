.class Ljavafx/scene/control/Pagination$2;
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
    .line 216
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Pagination$2;
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

    iput-object v6, v5, Ljavafx/scene/control/Pagination$2;->this$0:Ljavafx/scene/control/Pagination;

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/SimpleIntegerProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 3

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Pagination$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Pagination$2;->this$0:Ljavafx/scene/control/Pagination;

    invoke-static {v1}, Ljavafx/scene/control/Pagination;->access$300(Ljavafx/scene/control/Pagination;)Ljavafx/beans/property/IntegerProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    .line 219
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Pagination$2;->this$0:Ljavafx/scene/control/Pagination;

    invoke-virtual {v1}, Ljavafx/scene/control/Pagination;->getPageCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 220
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Pagination$2;->this$0:Ljavafx/scene/control/Pagination;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Pagination$2;->this$0:Ljavafx/scene/control/Pagination;

    invoke-static {v2}, Ljavafx/scene/control/Pagination;->access$400(Ljavafx/scene/control/Pagination;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Pagination;->setPageCount(I)V

    .line 222
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Pagination$2;->this$0:Ljavafx/scene/control/Pagination;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Pagination$2;->this$0:Ljavafx/scene/control/Pagination;

    invoke-virtual {v2}, Ljavafx/scene/control/Pagination;->getPageCount()I

    move-result v2

    invoke-static {v1, v2}, Ljavafx/scene/control/Pagination;->access$402(Ljavafx/scene/control/Pagination;I)I

    move-result v1

    .line 224
    :cond_1
    return-void
.end method
