.class Ljavafx/scene/control/ComboBoxBase$3;
.super Ljavafx/beans/property/SimpleStringProperty;
.source "ComboBoxBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/ComboBoxBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/ComboBoxBase;


# direct methods
.method constructor <init>(Ljavafx/scene/control/ComboBoxBase;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase$3;, "Ljavafx/scene/control/ComboBoxBase$3;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ComboBoxBase;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, p4

    .local v4, "x2":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/scene/control/ComboBoxBase$3;->this$0:Ljavafx/scene/control/ComboBoxBase;

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/SimpleStringProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 5

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase$3;, "Ljavafx/scene/control/ComboBoxBase$3;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBoxBase$3;->get()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 225
    .local v1, "txt":Ljava/lang/String;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    move-object v2, v1

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 227
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ComboBoxBase$3;->set(Ljava/lang/String;)V

    .line 229
    :cond_0
    return-void
.end method
