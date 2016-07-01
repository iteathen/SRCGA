.class Ljavafx/scene/control/TextInputControl$1;
.super Ljavafx/beans/binding/IntegerBinding;
.source "TextInputControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/TextInputControl;-><init>(Ljavafx/scene/control/TextInputControl$Content;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TextInputControl;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TextInputControl;)V
    .locals 8

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TextInputControl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl$1;->this$0:Ljavafx/scene/control/TextInputControl;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/binding/IntegerBinding;-><init>()V

    .line 144
    move-object v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavafx/beans/Observable;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TextInputControl$1;->this$0:Ljavafx/scene/control/TextInputControl;

    invoke-static {v6}, Ljavafx/scene/control/TextInputControl;->access$000(Ljavafx/scene/control/TextInputControl;)Ljavafx/scene/control/TextInputControl$TextProperty;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TextInputControl$1;->bind([Ljavafx/beans/Observable;)V

    return-void
.end method


# virtual methods
.method protected computeValue()I
    .locals 3

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$1;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl$1;->this$0:Ljavafx/scene/control/TextInputControl;

    invoke-static {v2}, Ljavafx/scene/control/TextInputControl;->access$000(Ljavafx/scene/control/TextInputControl;)Ljavafx/scene/control/TextInputControl$TextProperty;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl$TextProperty;->get()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 147
    .local v1, "txt":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl$1;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TextInputControl$1;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0
.end method
