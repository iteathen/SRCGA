.class final Lcom/sun/javafx/scene/control/ControlAcceleratorSupport$1;
.super Ljava/lang/Object;
.source "ControlAcceleratorSupport.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/ControlAcceleratorSupport;->addAcceleratorsIntoScene(Ljavafx/collections/ObservableList;Ljavafx/scene/Node;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$anchor:Ljavafx/scene/Node;

.field final synthetic val$items:Ljavafx/collections/ObservableList;


# direct methods
.method constructor <init>(Ljavafx/scene/Node;Ljavafx/collections/ObservableList;)V
    .locals 5

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ControlAcceleratorSupport$1;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport$1;->val$anchor:Ljavafx/scene/Node;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport$1;->val$items:Ljavafx/collections/ObservableList;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 5

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ControlAcceleratorSupport$1;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport$1;->val$anchor:Ljavafx/scene/Node;

    invoke-virtual {v3}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    move-object v2, v3

    .line 82
    .local v2, "scene":Ljavafx/scene/Scene;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 83
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport$1;->val$anchor:Ljavafx/scene/Node;

    invoke-virtual {v3}, Ljavafx/scene/Node;->sceneProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 84
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport$1;->val$items:Ljavafx/collections/ObservableList;

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/ControlAcceleratorSupport;->access$000(Ljavafx/collections/ObservableList;Ljavafx/scene/Scene;)V

    .line 86
    :cond_0
    return-void
.end method
