.class Ljavafx/scene/paint/PhongMaterial$4;
.super Lcom/sun/javafx/beans/event/AbstractNotifyListener;
.source "PhongMaterial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/paint/PhongMaterial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/paint/PhongMaterial;


# direct methods
.method constructor <init>(Ljavafx/scene/paint/PhongMaterial;)V
    .locals 4

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial$4;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/paint/PhongMaterial;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/paint/PhongMaterial$4;->this$0:Ljavafx/scene/paint/PhongMaterial;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/beans/event/AbstractNotifyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 5

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial$4;
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/paint/PhongMaterial$4;->this$0:Ljavafx/scene/paint/PhongMaterial;

    invoke-static {v2}, Ljavafx/scene/paint/PhongMaterial;->access$300(Ljavafx/scene/paint/PhongMaterial;)Ljavafx/scene/image/Image;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 214
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getImageAccessor()Lcom/sun/javafx/tk/Toolkit$ImageAccessor;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/paint/PhongMaterial$4;->this$0:Ljavafx/scene/paint/PhongMaterial;

    invoke-static {v4}, Ljavafx/scene/paint/PhongMaterial;->access$300(Ljavafx/scene/paint/PhongMaterial;)Ljavafx/scene/image/Image;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sun/javafx/tk/Toolkit$ImageAccessor;->getImageProperty(Ljavafx/scene/image/Image;)Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 215
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/paint/PhongMaterial$4;->this$0:Ljavafx/scene/paint/PhongMaterial;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljavafx/scene/paint/PhongMaterial;->access$402(Ljavafx/scene/paint/PhongMaterial;Z)Z

    move-result v2

    .line 226
    :cond_0
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/paint/PhongMaterial$4;->this$0:Ljavafx/scene/paint/PhongMaterial;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/paint/PhongMaterial;->setDirty(Z)V

    .line 227
    return-void

    .line 216
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/paint/PhongMaterial$4;->this$0:Ljavafx/scene/paint/PhongMaterial;

    invoke-static {v2}, Ljavafx/scene/paint/PhongMaterial;->access$500(Ljavafx/scene/paint/PhongMaterial;)Ljavafx/scene/image/Image;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 217
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getImageAccessor()Lcom/sun/javafx/tk/Toolkit$ImageAccessor;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/paint/PhongMaterial$4;->this$0:Ljavafx/scene/paint/PhongMaterial;

    invoke-static {v4}, Ljavafx/scene/paint/PhongMaterial;->access$500(Ljavafx/scene/paint/PhongMaterial;)Ljavafx/scene/image/Image;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sun/javafx/tk/Toolkit$ImageAccessor;->getImageProperty(Ljavafx/scene/image/Image;)Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 218
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/paint/PhongMaterial$4;->this$0:Ljavafx/scene/paint/PhongMaterial;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljavafx/scene/paint/PhongMaterial;->access$602(Ljavafx/scene/paint/PhongMaterial;Z)Z

    move-result v2

    goto :goto_0

    .line 219
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/paint/PhongMaterial$4;->this$0:Ljavafx/scene/paint/PhongMaterial;

    invoke-static {v2}, Ljavafx/scene/paint/PhongMaterial;->access$700(Ljavafx/scene/paint/PhongMaterial;)Ljavafx/scene/image/Image;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v2, v1

    .line 220
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getImageAccessor()Lcom/sun/javafx/tk/Toolkit$ImageAccessor;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/paint/PhongMaterial$4;->this$0:Ljavafx/scene/paint/PhongMaterial;

    invoke-static {v4}, Ljavafx/scene/paint/PhongMaterial;->access$700(Ljavafx/scene/paint/PhongMaterial;)Ljavafx/scene/image/Image;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sun/javafx/tk/Toolkit$ImageAccessor;->getImageProperty(Ljavafx/scene/image/Image;)Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 221
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/paint/PhongMaterial$4;->this$0:Ljavafx/scene/paint/PhongMaterial;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljavafx/scene/paint/PhongMaterial;->access$802(Ljavafx/scene/paint/PhongMaterial;Z)Z

    move-result v2

    goto :goto_0

    .line 222
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/paint/PhongMaterial$4;->this$0:Ljavafx/scene/paint/PhongMaterial;

    invoke-static {v2}, Ljavafx/scene/paint/PhongMaterial;->access$900(Ljavafx/scene/paint/PhongMaterial;)Ljavafx/scene/image/Image;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 223
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getImageAccessor()Lcom/sun/javafx/tk/Toolkit$ImageAccessor;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/paint/PhongMaterial$4;->this$0:Ljavafx/scene/paint/PhongMaterial;

    invoke-static {v4}, Ljavafx/scene/paint/PhongMaterial;->access$900(Ljavafx/scene/paint/PhongMaterial;)Ljavafx/scene/image/Image;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sun/javafx/tk/Toolkit$ImageAccessor;->getImageProperty(Ljavafx/scene/image/Image;)Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 224
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/paint/PhongMaterial$4;->this$0:Ljavafx/scene/paint/PhongMaterial;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljavafx/scene/paint/PhongMaterial;->access$1002(Ljavafx/scene/paint/PhongMaterial;Z)Z

    move-result v2

    goto :goto_0
.end method
