.class Lcom/sun/javafx/scene/control/skin/InputField$2;
.super Ljavafx/beans/property/IntegerPropertyBase;
.source "InputField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/InputField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private oldValue:I

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/InputField;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/InputField;I)V
    .locals 5

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputField$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/InputField;
    move v2, p2

    .local v2, "x0":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/InputField$2;->this$0:Lcom/sun/javafx/scene/control/skin/InputField;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/IntegerPropertyBase;-><init>(I)V

    .line 79
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/InputField$2;->get()I

    move-result v4

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/InputField$2;->oldValue:I

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputField$2;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/InputField$2;->this$0:Lcom/sun/javafx/scene/control/skin/InputField;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/InputField$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputField$2;
    const-string v1, "prefColumnCount"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/InputField$2;
    return-object v0
.end method

.method protected invalidated()V
    .locals 6

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputField$2;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/InputField$2;->get()I

    move-result v2

    move v1, v2

    .line 85
    .local v1, "value":I
    move v2, v1

    if-gez v2, :cond_1

    .line 86
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/InputField$2;->isBound()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/InputField$2;->unbind()V

    .line 89
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/scene/control/skin/InputField$2;->oldValue:I

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/InputField$2;->set(I)V

    .line 90
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "value cannot be negative."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/scene/control/skin/InputField$2;->oldValue:I

    .line 94
    return-void
.end method
