.class Lcom/sun/javafx/scene/control/skin/SpinnerSkin$1;
.super Ljavafx/scene/layout/StackPane;
.source "SpinnerSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/SpinnerSkin;-><init>(Ljavafx/scene/control/Spinner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/SpinnerSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/SpinnerSkin;)V
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin$1;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin$1;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/SpinnerSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/SpinnerSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/SpinnerSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/layout/StackPane;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin$1;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin$1;"
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin$4;->$SwitchMap$javafx$scene$AccessibleAction:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 89
    :goto_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/layout/StackPane;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 91
    return-void

    .line 88
    :pswitch_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/SpinnerSkin;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Spinner;

    invoke-virtual {v3}, Ljavafx/scene/control/Spinner;->increment()V

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
