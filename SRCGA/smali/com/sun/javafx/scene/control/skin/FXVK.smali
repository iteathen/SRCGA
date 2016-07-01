.class public Lcom/sun/javafx/scene/control/skin/FXVK;
.super Ljavafx/scene/control/Control;
.source "FXVK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/FXVK$Type;
    }
.end annotation


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "fxvk"

.field static final VK_TYPE_NAMES:[Ljava/lang/String;

.field public static final VK_TYPE_PROP_KEY:Ljava/lang/String; = "vkType"

.field static vk:Lcom/sun/javafx/scene/control/skin/FXVK;


# instance fields
.field private attachedNode:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field chars:[Ljava/lang/String;

.field private final onAction:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/KeyEvent;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "text"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "numeric"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "url"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string v3, "email"

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/scene/control/skin/FXVK;->VK_TYPE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVK;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Control;-><init>()V

    .line 49
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "onAction"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/FXVK;->onAction:Ljavafx/beans/property/ObjectProperty;

    .line 62
    move-object v1, v0

    sget-object v2, Ljavafx/geometry/NodeOrientation;->LEFT_TO_RIGHT:Ljavafx/geometry/NodeOrientation;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/FXVK;->setNodeOrientation(Ljavafx/geometry/NodeOrientation;)V

    .line 63
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/FXVK;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "fxvk"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 64
    return-void
.end method

.method public static attach(Ljavafx/scene/Node;)V
    .locals 6

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "textInput":Ljavafx/scene/Node;
    sget-object v1, Lcom/sun/javafx/scene/control/skin/FXVK;->vk:Lcom/sun/javafx/scene/control/skin/FXVK;

    if-nez v1, :cond_0

    .line 97
    new-instance v1, Lcom/sun/javafx/scene/control/skin/FXVK;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/FXVK;-><init>()V

    sput-object v1, Lcom/sun/javafx/scene/control/skin/FXVK;->vk:Lcom/sun/javafx/scene/control/skin/FXVK;

    .line 98
    sget-object v1, Lcom/sun/javafx/scene/control/skin/FXVK;->vk:Lcom/sun/javafx/scene/control/skin/FXVK;

    new-instance v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sget-object v4, Lcom/sun/javafx/scene/control/skin/FXVK;->vk:Lcom/sun/javafx/scene/control/skin/FXVK;

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;-><init>(Lcom/sun/javafx/scene/control/skin/FXVK;)V

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/FXVK;->setSkin(Ljavafx/scene/control/Skin;)V

    .line 100
    :cond_0
    sget-object v1, Lcom/sun/javafx/scene/control/skin/FXVK;->vk:Lcom/sun/javafx/scene/control/skin/FXVK;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/FXVK;->setAttachedNode(Ljavafx/scene/Node;)V

    .line 101
    return-void
.end method

.method public static detach()V
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/sun/javafx/scene/control/skin/FXVK;->vk:Lcom/sun/javafx/scene/control/skin/FXVK;

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/sun/javafx/scene/control/skin/FXVK;->vk:Lcom/sun/javafx/scene/control/skin/FXVK;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVK;->setAttachedNode(Ljavafx/scene/Node;)V

    .line 107
    :cond_0
    return-void
.end method

.method public static init(Ljavafx/scene/Node;)V
    .locals 6

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "textInput":Ljavafx/scene/Node;
    sget-object v2, Lcom/sun/javafx/scene/control/skin/FXVK;->vk:Lcom/sun/javafx/scene/control/skin/FXVK;

    if-eqz v2, :cond_0

    .line 92
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v2, Lcom/sun/javafx/scene/control/skin/FXVK;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/FXVK;-><init>()V

    sput-object v2, Lcom/sun/javafx/scene/control/skin/FXVK;->vk:Lcom/sun/javafx/scene/control/skin/FXVK;

    .line 89
    new-instance v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sget-object v4, Lcom/sun/javafx/scene/control/skin/FXVK;->vk:Lcom/sun/javafx/scene/control/skin/FXVK;

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;-><init>(Lcom/sun/javafx/scene/control/skin/FXVK;)V

    move-object v1, v2

    .line 90
    .local v1, "vkskin":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    sget-object v2, Lcom/sun/javafx/scene/control/skin/FXVK;->vk:Lcom/sun/javafx/scene/control/skin/FXVK;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/FXVK;->setSkin(Ljavafx/scene/control/Skin;)V

    .line 91
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->prerender(Ljavafx/scene/Node;)V

    .line 92
    goto :goto_0
.end method


# virtual methods
.method final attachedNodeProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVK;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVK;->attachedNode:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 68
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/FXVK$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/FXVK$1;-><init>(Lcom/sun/javafx/scene/control/skin/FXVK;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/FXVK;->attachedNode:Ljavafx/beans/property/ObjectProperty;

    .line 78
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVK;->attachedNode:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/FXVK;
    return-object v0
.end method

.method protected createDefaultSkin()Ljavafx/scene/control/Skin;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/Skin",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVK;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;-><init>(Lcom/sun/javafx/scene/control/skin/FXVK;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/FXVK;
    return-object v0
.end method

.method final getAttachedNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVK;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVK;->attachedNode:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/FXVK;
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/FXVK;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVK;->attachedNode:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    goto :goto_0
.end method

.method public final getOnAction()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/KeyEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVK;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVK;->onAction:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/FXVK;
    return-object v0
.end method

.method public final onActionProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/KeyEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVK;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVK;->onAction:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/FXVK;
    return-object v0
.end method

.method final setAttachedNode(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVK;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/FXVK;->attachedNodeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnAction(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/KeyEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVK;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/input/KeyEvent;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/FXVK;->onAction:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method
