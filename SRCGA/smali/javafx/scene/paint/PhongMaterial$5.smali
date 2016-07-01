.class Ljavafx/scene/paint/PhongMaterial$5;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "PhongMaterial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/paint/PhongMaterial;->diffuseMapProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/SimpleObjectProperty",
        "<",
        "Ljavafx/scene/image/Image;",
        ">;"
    }
.end annotation


# instance fields
.field private needsListeners:Z

.field final synthetic this$0:Ljavafx/scene/paint/PhongMaterial;


# direct methods
.method constructor <init>(Ljavafx/scene/paint/PhongMaterial;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial$5;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/paint/PhongMaterial;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/paint/PhongMaterial$5;->this$0:Ljavafx/scene/paint/PhongMaterial;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Ljavafx/scene/paint/PhongMaterial$5;->needsListeners:Z

    return-void
.end method


# virtual methods
.method public invalidated()V
    .locals 8

    .prologue
    .line 256
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/paint/PhongMaterial$5;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/paint/PhongMaterial$5;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/image/Image;

    move-object v2, v3

    .line 258
    .local v2, "_image":Ljavafx/scene/image/Image;
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/paint/PhongMaterial$5;->needsListeners:Z

    if-eqz v3, :cond_0

    .line 259
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getImageAccessor()Lcom/sun/javafx/tk/Toolkit$ImageAccessor;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/paint/PhongMaterial$5;->this$0:Ljavafx/scene/paint/PhongMaterial;

    invoke-static {v4}, Ljavafx/scene/paint/PhongMaterial;->access$300(Ljavafx/scene/paint/PhongMaterial;)Ljavafx/scene/image/Image;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sun/javafx/tk/Toolkit$ImageAccessor;->getImageProperty(Ljavafx/scene/image/Image;)Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/paint/PhongMaterial$5;->this$0:Ljavafx/scene/paint/PhongMaterial;

    .line 260
    invoke-static {v4}, Ljavafx/scene/paint/PhongMaterial;->access$1100(Ljavafx/scene/paint/PhongMaterial;)Lcom/sun/javafx/beans/event/AbstractNotifyListener;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/beans/event/AbstractNotifyListener;->getWeakListener()Ljavafx/beans/InvalidationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 263
    :cond_0
    move-object v3, v1

    move-object v4, v2

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getImageAccessor()Lcom/sun/javafx/tk/Toolkit$ImageAccessor;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v4, v5}, Lcom/sun/javafx/tk/Toolkit$ImageAccessor;->isAnimation(Ljavafx/scene/image/Image;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v2

    .line 264
    invoke-virtual {v4}, Ljavafx/scene/image/Image;->getProgress()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    :cond_1
    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Ljavafx/scene/paint/PhongMaterial$5;->needsListeners:Z

    .line 266
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/paint/PhongMaterial$5;->needsListeners:Z

    if-eqz v3, :cond_2

    .line 267
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getImageAccessor()Lcom/sun/javafx/tk/Toolkit$ImageAccessor;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/sun/javafx/tk/Toolkit$ImageAccessor;->getImageProperty(Ljavafx/scene/image/Image;)Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/paint/PhongMaterial$5;->this$0:Ljavafx/scene/paint/PhongMaterial;

    .line 268
    invoke-static {v4}, Ljavafx/scene/paint/PhongMaterial;->access$1100(Ljavafx/scene/paint/PhongMaterial;)Lcom/sun/javafx/beans/event/AbstractNotifyListener;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/beans/event/AbstractNotifyListener;->getWeakListener()Ljavafx/beans/InvalidationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 270
    :cond_2
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/paint/PhongMaterial$5;->this$0:Ljavafx/scene/paint/PhongMaterial;

    move-object v4, v2

    invoke-static {v3, v4}, Ljavafx/scene/paint/PhongMaterial;->access$302(Ljavafx/scene/paint/PhongMaterial;Ljavafx/scene/image/Image;)Ljavafx/scene/image/Image;

    move-result-object v3

    .line 271
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/paint/PhongMaterial$5;->this$0:Ljavafx/scene/paint/PhongMaterial;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljavafx/scene/paint/PhongMaterial;->access$402(Ljavafx/scene/paint/PhongMaterial;Z)Z

    move-result v3

    .line 272
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/paint/PhongMaterial$5;->this$0:Ljavafx/scene/paint/PhongMaterial;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/paint/PhongMaterial;->setDirty(Z)V

    .line 273
    return-void

    .line 264
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method
