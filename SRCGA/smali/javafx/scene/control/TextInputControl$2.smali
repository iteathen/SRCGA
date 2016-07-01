.class Ljavafx/scene/control/TextInputControl$2;
.super Ljavafx/beans/binding/StringBinding;
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
    .line 152
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TextInputControl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl$2;->this$0:Ljavafx/scene/control/TextInputControl;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/binding/StringBinding;-><init>()V

    .line 153
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljavafx/beans/Observable;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TextInputControl$2;->this$0:Ljavafx/scene/control/TextInputControl;

    invoke-static {v6}, Ljavafx/scene/control/TextInputControl;->access$100(Ljavafx/scene/control/TextInputControl;)Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TextInputControl$2;->this$0:Ljavafx/scene/control/TextInputControl;

    invoke-static {v6}, Ljavafx/scene/control/TextInputControl;->access$000(Ljavafx/scene/control/TextInputControl;)Ljavafx/scene/control/TextInputControl$TextProperty;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TextInputControl$2;->bind([Ljavafx/beans/Observable;)V

    return-void
.end method


# virtual methods
.method protected computeValue()Ljava/lang/String;
    .locals 10

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$2;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TextInputControl$2;->this$0:Ljavafx/scene/control/TextInputControl;

    invoke-static {v6}, Ljavafx/scene/control/TextInputControl;->access$000(Ljavafx/scene/control/TextInputControl;)Ljavafx/scene/control/TextInputControl$TextProperty;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/control/TextInputControl$TextProperty;->get()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 156
    .local v1, "txt":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TextInputControl$2;->this$0:Ljavafx/scene/control/TextInputControl;

    invoke-static {v6}, Ljavafx/scene/control/TextInputControl;->access$100(Ljavafx/scene/control/TextInputControl;)Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/IndexRange;

    move-object v2, v6

    .line 157
    .local v2, "sel":Ljavafx/scene/control/IndexRange;
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v2

    if-nez v6, :cond_1

    :cond_0
    const-string v6, ""

    move-object v0, v6

    .line 164
    .end local v0    # "this":Ljavafx/scene/control/TextInputControl$2;
    :goto_0
    return-object v0

    .line 159
    .restart local v0    # "this":Ljavafx/scene/control/TextInputControl$2;
    :cond_1
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/IndexRange;->getStart()I

    move-result v6

    move v3, v6

    .line 160
    .local v3, "start":I
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/IndexRange;->getEnd()I

    move-result v6

    move v4, v6

    .line 161
    .local v4, "end":I
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v5, v6

    .line 162
    .local v5, "length":I
    move v6, v4

    move v7, v3

    move v8, v5

    add-int/2addr v7, v8

    if-le v6, v7, :cond_2

    move v6, v5

    move v4, v6

    .line 163
    :cond_2
    move v6, v3

    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    if-le v6, v7, :cond_3

    const/4 v6, 0x0

    move v9, v6

    move v6, v9

    move v7, v9

    move v4, v7

    move v3, v6

    .line 164
    :cond_3
    move-object v6, v1

    move v7, v3

    move v8, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method
