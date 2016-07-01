.class Ljavafx/scene/control/ChoiceBox$2;
.super Ljavafx/beans/property/ReadOnlyBooleanWrapper;
.source "ChoiceBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/ChoiceBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/ChoiceBox;


# direct methods
.method constructor <init>(Ljavafx/scene/control/ChoiceBox;)V
    .locals 4

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox$2;, "Ljavafx/scene/control/ChoiceBox$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ChoiceBox;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ChoiceBox$2;->this$0:Ljavafx/scene/control/ChoiceBox;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox$2;, "Ljavafx/scene/control/ChoiceBox$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ChoiceBox$2;->this$0:Ljavafx/scene/control/ChoiceBox;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBox$2;, "Ljavafx/scene/control/ChoiceBox$2;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox$2;, "Ljavafx/scene/control/ChoiceBox$2;"
    const-string v1, "showing"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBox$2;, "Ljavafx/scene/control/ChoiceBox$2;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox$2;, "Ljavafx/scene/control/ChoiceBox$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ChoiceBox$2;->this$0:Ljavafx/scene/control/ChoiceBox;

    # getter for: Ljavafx/scene/control/ChoiceBox;->SHOWING_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/ChoiceBox;->access$100()Ljavafx/css/PseudoClass;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ChoiceBox$2;->get()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/ChoiceBox;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 208
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ChoiceBox$2;->this$0:Ljavafx/scene/control/ChoiceBox;

    sget-object v2, Ljavafx/scene/AccessibleAttribute;->EXPANDED:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/ChoiceBox;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 209
    return-void
.end method
