.class Lcom/sun/javafx/scene/control/skin/TextAreaSkin$1;
.super Ljavafx/beans/binding/IntegerBinding;
.source "TextAreaSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/TextAreaSkin;-><init>(Ljavafx/scene/control/TextArea;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

.field final synthetic val$textArea:Ljavafx/scene/control/TextArea;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/scene/control/TextArea;)V
    .locals 9

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$1;->val$textArea:Ljavafx/scene/control/TextArea;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/binding/IntegerBinding;-><init>()V

    .line 416
    move-object v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$1;->val$textArea:Ljavafx/scene/control/TextArea;

    invoke-virtual {v7}, Ljavafx/scene/control/TextArea;->caretPositionProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$1;->bind([Ljavafx/beans/Observable;)V

    return-void
.end method


# virtual methods
.method protected computeValue()I
    .locals 2

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$1;->val$textArea:Ljavafx/scene/control/TextArea;

    invoke-virtual {v1}, Ljavafx/scene/control/TextArea;->getCaretPosition()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$1;
    return v0
.end method
