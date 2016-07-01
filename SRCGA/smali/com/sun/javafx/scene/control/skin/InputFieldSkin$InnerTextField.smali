.class Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;
.super Ljavafx/scene/control/TextField;
.source "InputFieldSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/InputFieldSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerTextField"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/InputFieldSkin;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/scene/control/skin/InputFieldSkin;)V
    .locals 4

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;->this$0:Lcom/sun/javafx/scene/control/skin/InputFieldSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TextField;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/scene/control/skin/InputFieldSkin;Lcom/sun/javafx/scene/control/skin/InputFieldSkin$1;)V
    .locals 5

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/scene/control/skin/InputFieldSkin;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/javafx/scene/control/skin/InputFieldSkin$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;-><init>(Lcom/sun/javafx/scene/control/skin/InputFieldSkin;)V

    return-void
.end method


# virtual methods
.method public buildEventDispatchChain(Ljavafx/event/EventDispatchChain;)Ljavafx/event/EventDispatchChain;
    .locals 6

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;
    move-object v1, p1

    .local v1, "tail":Ljavafx/event/EventDispatchChain;
    new-instance v3, Lcom/sun/javafx/event/EventDispatchChainImpl;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/javafx/event/EventDispatchChainImpl;-><init>()V

    move-object v2, v3

    .line 178
    .local v2, "chain":Ljavafx/event/EventDispatchChain;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;->this$0:Lcom/sun/javafx/scene/control/skin/InputFieldSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->access$100(Lcom/sun/javafx/scene/control/skin/InputFieldSkin;)Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;->getEventDispatcher()Ljavafx/event/EventDispatcher;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/event/EventDispatchChain;->append(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;

    move-result-object v3

    .line 179
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;
    return-object v0
.end method

.method public handleFocus(Z)V
    .locals 4

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;
    move v1, p1

    .local v1, "b":Z
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;->setFocused(Z)V

    .line 174
    return-void
.end method
