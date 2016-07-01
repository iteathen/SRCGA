.class final Lcom/sun/javafx/scene/control/ControlAcceleratorSupport$2;
.super Ljava/lang/Object;
.source "ControlAcceleratorSupport.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/ControlAcceleratorSupport;->addAcceleratorsIntoScene(Ljavafx/collections/ObservableList;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$controlProperty:Ljavafx/beans/property/ReadOnlyObjectProperty;

.field final synthetic val$items:Ljavafx/collections/ObservableList;


# direct methods
.method constructor <init>(Ljavafx/beans/property/ReadOnlyObjectProperty;Ljavafx/collections/ObservableList;)V
    .locals 5

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ControlAcceleratorSupport$2;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport$2;->val$controlProperty:Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport$2;->val$items:Ljavafx/collections/ObservableList;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 5

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ControlAcceleratorSupport$2;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport$2;->val$controlProperty:Ljavafx/beans/property/ReadOnlyObjectProperty;

    invoke-virtual {v3}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Control;

    move-object v2, v3

    .line 105
    .local v2, "control":Ljavafx/scene/control/Control;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 106
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport$2;->val$controlProperty:Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 107
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport$2;->val$items:Ljavafx/collections/ObservableList;

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport;->addAcceleratorsIntoScene(Ljavafx/collections/ObservableList;Ljavafx/scene/Node;)V

    .line 109
    :cond_0
    return-void
.end method
