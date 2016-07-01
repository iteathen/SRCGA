.class Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$3;
.super Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;
.source "ScrollBarSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$3;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    move-object v2, p2

    .local v2, "styleClass":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arrowStyleClass":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$1;)V

    return-void
.end method


# virtual methods
.method public varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$3;
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$4;->$SwitchMap$javafx$scene$AccessibleAction:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 150
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$EndButton;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 152
    :goto_0
    return-void

    .line 148
    :pswitch_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollBar;->decrement()V

    .line 149
    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
