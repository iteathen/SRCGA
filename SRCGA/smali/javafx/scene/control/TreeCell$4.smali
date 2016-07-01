.class Ljavafx/scene/control/TreeCell$4;
.super Ljava/lang/Object;
.source "TreeCell.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TreeCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TreeCell;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeCell;)V
    .locals 4

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell$4;, "Ljavafx/scene/control/TreeCell$4;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeCell;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TreeCell$4;->this$0:Ljavafx/scene/control/TreeCell;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 6

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell$4;, "Ljavafx/scene/control/TreeCell$4;"
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/Observable;
    move-object v3, v1

    check-cast v3, Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v3}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v3

    move v2, v3

    .line 163
    .local v2, "isExpanded":Z
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeCell$4;->this$0:Ljavafx/scene/control/TreeCell;

    # getter for: Ljavafx/scene/control/TreeCell;->EXPANDED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/TreeCell;->access$400()Ljavafx/css/PseudoClass;

    move-result-object v4

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeCell;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 164
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeCell$4;->this$0:Ljavafx/scene/control/TreeCell;

    # getter for: Ljavafx/scene/control/TreeCell;->COLLAPSED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/TreeCell;->access$500()Ljavafx/css/PseudoClass;

    move-result-object v4

    move v5, v2

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeCell;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 165
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeCell$4;->this$0:Ljavafx/scene/control/TreeCell;

    invoke-static {v4}, Ljavafx/scene/control/TreeCell;->access$600(Ljavafx/scene/control/TreeCell;)Z

    move-result v4

    if-eq v3, v4, :cond_0

    .line 166
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeCell$4;->this$0:Ljavafx/scene/control/TreeCell;

    sget-object v4, Ljavafx/scene/AccessibleAttribute;->EXPANDED:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeCell;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 168
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeCell$4;->this$0:Ljavafx/scene/control/TreeCell;

    move v4, v2

    invoke-static {v3, v4}, Ljavafx/scene/control/TreeCell;->access$602(Ljavafx/scene/control/TreeCell;Z)Z

    move-result v3

    .line 169
    return-void

    .line 164
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method
