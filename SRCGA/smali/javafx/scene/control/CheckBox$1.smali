.class Ljavafx/scene/control/CheckBox$1;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "CheckBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/CheckBox;->indeterminateProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/CheckBox;


# direct methods
.method constructor <init>(Ljavafx/scene/control/CheckBox;Z)V
    .locals 5

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBox$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/CheckBox;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/CheckBox$1;->this$0:Ljavafx/scene/control/CheckBox;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/BooleanPropertyBase;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBox$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CheckBox$1;->this$0:Ljavafx/scene/control/CheckBox;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CheckBox$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBox$1;
    const-string v1, "indeterminate"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CheckBox$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 5

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBox$1;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/CheckBox$1;->get()Z

    move-result v2

    move v1, v2

    .line 133
    .local v1, "active":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/CheckBox$1;->this$0:Ljavafx/scene/control/CheckBox;

    # getter for: Ljavafx/scene/control/CheckBox;->PSEUDO_CLASS_DETERMINATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/CheckBox;->access$000()Ljavafx/css/PseudoClass;

    move-result-object v3

    move v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/CheckBox;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 134
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/CheckBox$1;->this$0:Ljavafx/scene/control/CheckBox;

    # getter for: Ljavafx/scene/control/CheckBox;->PSEUDO_CLASS_INDETERMINATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/CheckBox;->access$100()Ljavafx/css/PseudoClass;

    move-result-object v3

    move v4, v1

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/CheckBox;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 135
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/CheckBox$1;->this$0:Ljavafx/scene/control/CheckBox;

    sget-object v3, Ljavafx/scene/AccessibleAttribute;->INDETERMINATE:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/CheckBox;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 136
    return-void

    .line 133
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
