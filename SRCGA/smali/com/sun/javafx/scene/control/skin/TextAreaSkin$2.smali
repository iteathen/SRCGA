.class Lcom/sun/javafx/scene/control/skin/TextAreaSkin$2;
.super Ljavafx/beans/binding/DoubleBinding;
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


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)V
    .locals 8

    .prologue
    .line 464
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/binding/DoubleBinding;-><init>()V

    .line 465
    move-object v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavafx/beans/Observable;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretVisible:Ljavafx/beans/value/ObservableBooleanValue;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$2;->bind([Ljavafx/beans/Observable;)V

    return-void
.end method


# virtual methods
.method protected computeValue()D
    .locals 4

    .prologue
    .line 467
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$2;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretVisible:Ljavafx/beans/value/ObservableBooleanValue;

    invoke-interface {v2}, Ljavafx/beans/value/ObservableBooleanValue;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$2;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$2;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method
