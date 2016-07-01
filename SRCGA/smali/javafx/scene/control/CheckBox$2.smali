.class Ljavafx/scene/control/CheckBox$2;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "CheckBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/CheckBox;->selectedProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/CheckBox;


# direct methods
.method constructor <init>(Ljavafx/scene/control/CheckBox;)V
    .locals 4

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBox$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/CheckBox;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/CheckBox$2;->this$0:Ljavafx/scene/control/CheckBox;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/BooleanPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBox$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CheckBox$2;->this$0:Ljavafx/scene/control/CheckBox;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CheckBox$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBox$2;
    const-string v1, "selected"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CheckBox$2;
    return-object v0
.end method

.method protected invalidated()V
    .locals 5

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBox$2;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/CheckBox$2;->get()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v1, v2

    .line 168
    .local v1, "v":Ljava/lang/Boolean;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/CheckBox$2;->this$0:Ljavafx/scene/control/CheckBox;

    # getter for: Ljavafx/scene/control/CheckBox;->PSEUDO_CLASS_SELECTED:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/CheckBox;->access$200()Ljavafx/css/PseudoClass;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/CheckBox;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 169
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/CheckBox$2;->this$0:Ljavafx/scene/control/CheckBox;

    sget-object v3, Ljavafx/scene/AccessibleAttribute;->SELECTED:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/CheckBox;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 170
    return-void
.end method
