.class Ljavafx/scene/layout/Region$4;
.super Ljavafx/css/StyleableObjectProperty;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/layout/Region;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/scene/layout/Border;",
        ">;"
    }
.end annotation


# instance fields
.field private old:Ljavafx/scene/layout/Border;

.field final synthetic this$0:Ljavafx/scene/layout/Region;


# direct methods
.method constructor <init>(Ljavafx/scene/layout/Region;Ljavafx/scene/layout/Border;)V
    .locals 5

    .prologue
    .line 627
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$4;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/layout/Region;
    move-object v2, p2

    .local v2, "initialValue":Ljavafx/scene/layout/Border;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/layout/Region$4;->this$0:Ljavafx/scene/layout/Region;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    .line 628
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/layout/Region$4;->old:Ljavafx/scene/layout/Border;

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 629
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region$4;->this$0:Ljavafx/scene/layout/Region;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region$4;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/layout/Region;",
            "Ljavafx/scene/layout/Border;",
            ">;"
        }
    .end annotation

    .prologue
    .line 632
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$4;
    # getter for: Ljavafx/scene/layout/Region$StyleableProperties;->BORDER:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/layout/Region$StyleableProperties;->access$1000()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region$4;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 630
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$4;
    const-string v1, "border"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region$4;
    return-object v0
.end method

.method protected invalidated()V
    .locals 10

    .prologue
    .line 635
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$4;
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/layout/Region$4;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/layout/Border;

    move-object v1, v6

    .line 636
    .local v1, "b":Ljavafx/scene/layout/Border;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/Region$4;->old:Ljavafx/scene/layout/Border;

    if-eqz v6, :cond_7

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/Region$4;->old:Ljavafx/scene/layout/Border;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljavafx/scene/layout/Border;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 638
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/Region$4;->old:Ljavafx/scene/layout/Border;

    if-eqz v6, :cond_1

    move-object v6, v1

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/Region$4;->old:Ljavafx/scene/layout/Border;

    invoke-virtual {v6}, Ljavafx/scene/layout/Border;->getOutsets()Ljavafx/geometry/Insets;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/layout/Border;->getOutsets()Ljavafx/geometry/Insets;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/geometry/Insets;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 641
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/Region$4;->this$0:Ljavafx/scene/layout/Region;

    invoke-static {v6}, Ljavafx/scene/layout/Region;->access$1100(Ljavafx/scene/layout/Region;)V

    .line 643
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/Region$4;->old:Ljavafx/scene/layout/Border;

    if-eqz v6, :cond_3

    move-object v6, v1

    if-eqz v6, :cond_3

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/Region$4;->old:Ljavafx/scene/layout/Border;

    invoke-virtual {v6}, Ljavafx/scene/layout/Border;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/layout/Border;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/geometry/Insets;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 644
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/Region$4;->this$0:Ljavafx/scene/layout/Region;

    invoke-static {v6}, Ljavafx/scene/layout/Region;->access$500(Ljavafx/scene/layout/Region;)Ljavafx/scene/layout/Region$InsetsProperty;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/layout/Region$InsetsProperty;->fireValueChanged()V

    .line 652
    :cond_4
    move-object v6, v1

    if-eqz v6, :cond_9

    .line 653
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/layout/Border;->getImages()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    :goto_0
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/layout/BorderImage;

    move-object v3, v6

    .line 654
    .local v3, "i":Ljavafx/scene/layout/BorderImage;
    move-object v6, v3

    iget-object v6, v6, Ljavafx/scene/layout/BorderImage;->image:Ljavafx/scene/image/Image;

    move-object v4, v6

    .line 655
    .local v4, "image":Ljavafx/scene/image/Image;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getImageAccessor()Lcom/sun/javafx/tk/Toolkit$ImageAccessor;

    move-result-object v6

    move-object v5, v6

    .line 656
    .local v5, "acc":Lcom/sun/javafx/tk/Toolkit$ImageAccessor;
    move-object v6, v5

    move-object v7, v4

    invoke-interface {v6, v7}, Lcom/sun/javafx/tk/Toolkit$ImageAccessor;->isAnimation(Ljavafx/scene/image/Image;)Z

    move-result v6

    if-nez v6, :cond_5

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/image/Image;->getProgress()D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_6

    .line 657
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/Region$4;->this$0:Ljavafx/scene/layout/Region;

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljavafx/scene/layout/Region;->addImageListener(Ljavafx/scene/image/Image;)V

    .line 659
    :cond_6
    goto :goto_0

    .line 636
    .end local v3    # "i":Ljavafx/scene/layout/BorderImage;
    .end local v4    # "image":Ljavafx/scene/image/Image;
    .end local v5    # "acc":Lcom/sun/javafx/tk/Toolkit$ImageAccessor;
    :cond_7
    move-object v6, v1

    if-nez v6, :cond_0

    .line 674
    :cond_8
    :goto_1
    return-void

    .line 663
    :cond_9
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/Region$4;->old:Ljavafx/scene/layout/Border;

    if-eqz v6, :cond_a

    .line 664
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/Region$4;->old:Ljavafx/scene/layout/Border;

    invoke-virtual {v6}, Ljavafx/scene/layout/Border;->getImages()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    :goto_2
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/layout/BorderImage;

    move-object v3, v6

    .line 665
    .restart local v3    # "i":Ljavafx/scene/layout/BorderImage;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/Region$4;->this$0:Ljavafx/scene/layout/Region;

    move-object v7, v3

    iget-object v7, v7, Ljavafx/scene/layout/BorderImage;->image:Ljavafx/scene/image/Image;

    invoke-virtual {v6, v7}, Ljavafx/scene/layout/Region;->removeImageListener(Ljavafx/scene/image/Image;)V

    .line 666
    goto :goto_2

    .line 670
    .end local v3    # "i":Ljavafx/scene/layout/BorderImage;
    :cond_a
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/Region$4;->this$0:Ljavafx/scene/layout/Region;

    sget-object v7, Lcom/sun/javafx/scene/DirtyBits;->SHAPE_STROKE:Lcom/sun/javafx/scene/DirtyBits;

    invoke-static {v6, v7}, Ljavafx/scene/layout/Region;->access$1200(Ljavafx/scene/layout/Region;Lcom/sun/javafx/scene/DirtyBits;)V

    .line 671
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/Region$4;->this$0:Ljavafx/scene/layout/Region;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljavafx/scene/layout/Region;->access$902(Ljavafx/scene/layout/Region;Z)Z

    move-result v6

    .line 672
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljavafx/scene/layout/Region$4;->old:Ljavafx/scene/layout/Border;

    goto :goto_1
.end method
