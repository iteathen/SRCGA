.class Ljavafx/scene/control/Pagination$1;
.super Ljavafx/css/StyleableIntegerProperty;
.source "Pagination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/Pagination;->maxPageIndicatorCountProperty()Ljavafx/beans/property/IntegerProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/Pagination;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Pagination;I)V
    .locals 5

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Pagination$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Pagination;
    move v2, p2

    .local v2, "x0":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/Pagination$1;->this$0:Ljavafx/scene/control/Pagination;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableIntegerProperty;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Pagination$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Pagination$1;->this$0:Ljavafx/scene/control/Pagination;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Pagination$1;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/Pagination;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Pagination$1;
    # getter for: Ljavafx/scene/control/Pagination$StyleableProperties;->MAX_PAGE_INDICATOR_COUNT:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/control/Pagination$StyleableProperties;->access$200()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Pagination$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Pagination$1;
    const-string v1, "maxPageIndicatorCount"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Pagination$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Pagination$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Pagination$1;->this$0:Ljavafx/scene/control/Pagination;

    invoke-static {v1}, Ljavafx/scene/control/Pagination;->access$000(Ljavafx/scene/control/Pagination;)Ljavafx/beans/property/IntegerProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->isBound()Z

    move-result v1

    if-nez v1, :cond_2

    .line 189
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Pagination$1;->this$0:Ljavafx/scene/control/Pagination;

    invoke-virtual {v1}, Ljavafx/scene/control/Pagination;->getMaxPageIndicatorCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Pagination$1;->this$0:Ljavafx/scene/control/Pagination;

    invoke-virtual {v1}, Ljavafx/scene/control/Pagination;->getMaxPageIndicatorCount()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Pagination$1;->this$0:Ljavafx/scene/control/Pagination;

    invoke-virtual {v2}, Ljavafx/scene/control/Pagination;->getPageCount()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 190
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Pagination$1;->this$0:Ljavafx/scene/control/Pagination;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Pagination$1;->this$0:Ljavafx/scene/control/Pagination;

    invoke-static {v2}, Ljavafx/scene/control/Pagination;->access$100(Ljavafx/scene/control/Pagination;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Pagination;->setMaxPageIndicatorCount(I)V

    .line 192
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Pagination$1;->this$0:Ljavafx/scene/control/Pagination;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Pagination$1;->this$0:Ljavafx/scene/control/Pagination;

    invoke-virtual {v2}, Ljavafx/scene/control/Pagination;->getMaxPageIndicatorCount()I

    move-result v2

    invoke-static {v1, v2}, Ljavafx/scene/control/Pagination;->access$102(Ljavafx/scene/control/Pagination;I)I

    move-result v1

    .line 194
    :cond_2
    return-void
.end method
