.class Ljavafx/scene/control/Button$2;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "Button.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/Button;->cancelButtonProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/Button;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Button;Z)V
    .locals 5

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Button$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Button;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/Button$2;->this$0:Ljavafx/scene/control/Button;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/BooleanPropertyBase;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Button$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Button$2;->this$0:Ljavafx/scene/control/Button;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Button$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Button$2;
    const-string v1, "cancelButton"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Button$2;
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Button$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Button$2;->this$0:Ljavafx/scene/control/Button;

    # getter for: Ljavafx/scene/control/Button;->PSEUDO_CLASS_CANCEL:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/Button;->access$100()Ljavafx/css/PseudoClass;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Button$2;->get()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/Button;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 159
    return-void
.end method
