.class Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$1;
.super Ljavafx/scene/layout/StackPane;
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
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;)V
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/layout/StackPane;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 100
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$1;
    move-object v2, p1

    .local v2, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v3, p2

    .local v3, "parameters":[Ljava/lang/Object;
    sget-object v4, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$4;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 102
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-super {v4, v5, v6}, Ljavafx/scene/layout/StackPane;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$1;
    :goto_0
    return-object v1

    .line 101
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$1;
    :pswitch_0
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ScrollBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
