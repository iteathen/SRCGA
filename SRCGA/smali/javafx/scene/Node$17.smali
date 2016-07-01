.class Ljavafx/scene/Node$17;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Node;->impl_showMnemonicsProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Node;


# direct methods
.method constructor <init>(Ljavafx/scene/Node;Z)V
    .locals 5

    .prologue
    .line 8152
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$17;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Node;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/Node$17;->this$0:Ljavafx/scene/Node;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/BooleanPropertyBase;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 8161
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$17;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$17;->this$0:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$17;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 8166
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$17;
    const-string v1, "showMnemonics"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$17;
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 8156
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$17;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$17;->this$0:Ljavafx/scene/Node;

    # getter for: Ljavafx/scene/Node;->SHOW_MNEMONICS_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/Node;->access$4900()Ljavafx/css/PseudoClass;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node$17;->get()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/Node;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 8157
    return-void
.end method
