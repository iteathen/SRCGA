.class Ljavafx/stage/Window$3;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/stage/Window;->opacityProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/stage/Window;


# direct methods
.method constructor <init>(Ljavafx/stage/Window;D)V
    .locals 8

    .prologue
    .line 624
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/stage/Window;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/stage/Window$3;->this$0:Ljavafx/stage/Window;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/DoublePropertyBase;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 635
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window$3;->this$0:Ljavafx/stage/Window;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 640
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$3;
    const-string v1, "opacity"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window$3;
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 628
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window$3;->this$0:Ljavafx/stage/Window;

    iget-object v1, v1, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    if-eqz v1, :cond_0

    .line 629
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window$3;->this$0:Ljavafx/stage/Window;

    iget-object v1, v1, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/Window$3;->get()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-interface {v1, v2}, Lcom/sun/javafx/tk/TKStage;->setOpacity(F)V

    .line 631
    :cond_0
    return-void
.end method
