.class Lcom/sun/javafx/scene/control/skin/InputField$1;
.super Ljavafx/beans/property/StringPropertyBase;
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
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/InputField;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/InputField;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputField$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/InputField;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/InputField$1;->this$0:Lcom/sun/javafx/scene/control/skin/InputField;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/StringPropertyBase;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputField$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/InputField$1;->this$0:Lcom/sun/javafx/scene/control/skin/InputField;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/InputField$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputField$1;
    const-string v1, "promptText"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/InputField$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 5

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputField$1;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/InputField$1;->get()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 60
    .local v1, "txt":Ljava/lang/String;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    move-object v2, v1

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 62
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/InputField$1;->set(Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method
