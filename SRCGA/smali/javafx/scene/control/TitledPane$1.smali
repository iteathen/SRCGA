.class Ljavafx/scene/control/TitledPane$1;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "TitledPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TitledPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TitledPane;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TitledPane;Z)V
    .locals 5

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPane$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TitledPane;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/TitledPane$1;->this$0:Ljavafx/scene/control/TitledPane;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/BooleanPropertyBase;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPane$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TitledPane$1;->this$0:Ljavafx/scene/control/TitledPane;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TitledPane$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPane$1;
    const-string v1, "expanded"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TitledPane$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 5

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPane$1;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TitledPane$1;->get()Z

    move-result v2

    move v1, v2

    .line 155
    .local v1, "active":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TitledPane$1;->this$0:Ljavafx/scene/control/TitledPane;

    # getter for: Ljavafx/scene/control/TitledPane;->PSEUDO_CLASS_EXPANDED:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/TitledPane;->access$000()Ljavafx/css/PseudoClass;

    move-result-object v3

    move v4, v1

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TitledPane;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 156
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TitledPane$1;->this$0:Ljavafx/scene/control/TitledPane;

    # getter for: Ljavafx/scene/control/TitledPane;->PSEUDO_CLASS_COLLAPSED:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/TitledPane;->access$100()Ljavafx/css/PseudoClass;

    move-result-object v3

    move v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/TitledPane;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 157
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TitledPane$1;->this$0:Ljavafx/scene/control/TitledPane;

    sget-object v3, Ljavafx/scene/AccessibleAttribute;->EXPANDED:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TitledPane;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 158
    return-void

    .line 156
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
