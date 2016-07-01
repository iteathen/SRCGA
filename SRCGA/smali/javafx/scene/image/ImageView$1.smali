.class Ljavafx/scene/image/ImageView$1;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "ImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/image/ImageView;->imageProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/scene/image/Image;",
        ">;"
    }
.end annotation


# instance fields
.field private needsListeners:Z

.field final synthetic this$0:Ljavafx/scene/image/ImageView;


# direct methods
.method constructor <init>(Ljavafx/scene/image/ImageView;)V
    .locals 4

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/image/ImageView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/image/ImageView$1;->this$0:Ljavafx/scene/image/ImageView;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    .line 200
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/image/ImageView$1;->needsListeners:Z

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView$1;->this$0:Ljavafx/scene/image/ImageView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/ImageView$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView$1;
    const-string v1, "image"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/ImageView$1;
    return-object v0
.end method

.method public invalidated()V
    .locals 9

    .prologue
    .line 204
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/image/ImageView$1;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/image/ImageView$1;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/image/Image;

    move-object v2, v4

    .line 205
    .local v2, "_image":Ljavafx/scene/image/Image;
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/image/ImageView$1;->this$0:Ljavafx/scene/image/ImageView;

    invoke-static {v4}, Ljavafx/scene/image/ImageView;->access$000(Ljavafx/scene/image/ImageView;)Ljavafx/scene/image/Image;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/image/ImageView$1;->this$0:Ljavafx/scene/image/ImageView;

    .line 206
    invoke-static {v4}, Ljavafx/scene/image/ImageView;->access$000(Ljavafx/scene/image/ImageView;)Ljavafx/scene/image/Image;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/image/Image;->getWidth()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/image/Image;->getWidth()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/image/ImageView$1;->this$0:Ljavafx/scene/image/ImageView;

    .line 207
    invoke-static {v4}, Ljavafx/scene/image/ImageView;->access$000(Ljavafx/scene/image/ImageView;)Ljavafx/scene/image/Image;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/image/Image;->getHeight()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/image/Image;->getHeight()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_5

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 209
    .local v3, "dimensionChanged":Z
    move-object v4, v1

    iget-boolean v4, v4, Ljavafx/scene/image/ImageView$1;->needsListeners:Z

    if-eqz v4, :cond_1

    .line 210
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getImageAccessor()Lcom/sun/javafx/tk/Toolkit$ImageAccessor;

    move-result-object v4

    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/image/ImageView$1;->this$0:Ljavafx/scene/image/ImageView;

    invoke-static {v5}, Ljavafx/scene/image/ImageView;->access$000(Ljavafx/scene/image/ImageView;)Ljavafx/scene/image/Image;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sun/javafx/tk/Toolkit$ImageAccessor;->getImageProperty(Ljavafx/scene/image/Image;)Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/image/ImageView$1;->this$0:Ljavafx/scene/image/ImageView;

    .line 211
    invoke-static {v5}, Ljavafx/scene/image/ImageView;->access$100(Ljavafx/scene/image/ImageView;)Lcom/sun/javafx/beans/event/AbstractNotifyListener;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/javafx/beans/event/AbstractNotifyListener;->getWeakListener()Ljavafx/beans/InvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 214
    :cond_1
    move-object v4, v1

    move-object v5, v2

    if-eqz v5, :cond_6

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/image/Image;->isAnimation()Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/image/Image;->getProgress()D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_6

    :cond_2
    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, v4, Ljavafx/scene/image/ImageView$1;->needsListeners:Z

    .line 215
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/image/ImageView$1;->this$0:Ljavafx/scene/image/ImageView;

    move-object v5, v2

    invoke-static {v4, v5}, Ljavafx/scene/image/ImageView;->access$002(Ljavafx/scene/image/ImageView;Ljavafx/scene/image/Image;)Ljavafx/scene/image/Image;

    move-result-object v4

    .line 217
    move-object v4, v1

    iget-boolean v4, v4, Ljavafx/scene/image/ImageView$1;->needsListeners:Z

    if-eqz v4, :cond_3

    .line 218
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getImageAccessor()Lcom/sun/javafx/tk/Toolkit$ImageAccessor;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v4, v5}, Lcom/sun/javafx/tk/Toolkit$ImageAccessor;->getImageProperty(Ljavafx/scene/image/Image;)Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/image/ImageView$1;->this$0:Ljavafx/scene/image/ImageView;

    .line 219
    invoke-static {v5}, Ljavafx/scene/image/ImageView;->access$100(Ljavafx/scene/image/ImageView;)Lcom/sun/javafx/beans/event/AbstractNotifyListener;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/javafx/beans/event/AbstractNotifyListener;->getWeakListener()Ljavafx/beans/InvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 221
    :cond_3
    move v4, v3

    if-eqz v4, :cond_4

    .line 222
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/image/ImageView$1;->this$0:Ljavafx/scene/image/ImageView;

    invoke-static {v4}, Ljavafx/scene/image/ImageView;->access$200(Ljavafx/scene/image/ImageView;)V

    .line 223
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/image/ImageView$1;->this$0:Ljavafx/scene/image/ImageView;

    invoke-static {v4}, Ljavafx/scene/image/ImageView;->access$300(Ljavafx/scene/image/ImageView;)V

    .line 225
    :cond_4
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/image/ImageView$1;->this$0:Ljavafx/scene/image/ImageView;

    sget-object v5, Lcom/sun/javafx/scene/DirtyBits;->NODE_CONTENTS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-static {v4, v5}, Ljavafx/scene/image/ImageView;->access$400(Ljavafx/scene/image/ImageView;Lcom/sun/javafx/scene/DirtyBits;)V

    .line 226
    return-void

    .line 207
    .end local v3    # "dimensionChanged":Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_0

    .line 214
    .restart local v3    # "dimensionChanged":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_1
.end method
