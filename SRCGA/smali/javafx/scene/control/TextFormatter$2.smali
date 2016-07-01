.class Ljavafx/scene/control/TextFormatter$2;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "TextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TextFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TextFormatter;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TextFormatter;)V
    .locals 4

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$2;, "Ljavafx/scene/control/TextFormatter$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TextFormatter;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TextFormatter$2;->this$0:Ljavafx/scene/control/TextFormatter;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$2;, "Ljavafx/scene/control/TextFormatter$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextFormatter$2;->this$0:Ljavafx/scene/control/TextFormatter;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextFormatter$2;, "Ljavafx/scene/control/TextFormatter$2;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$2;, "Ljavafx/scene/control/TextFormatter$2;"
    const-string v1, "value"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextFormatter$2;, "Ljavafx/scene/control/TextFormatter$2;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 5

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$2;, "Ljavafx/scene/control/TextFormatter$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextFormatter$2;->this$0:Ljavafx/scene/control/TextFormatter;

    invoke-static {v1}, Ljavafx/scene/control/TextFormatter;->access$000(Ljavafx/scene/control/TextFormatter;)Ljavafx/util/StringConverter;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TextFormatter$2;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 162
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TextFormatter$2;->isBound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TextFormatter$2;->unbind()V

    .line 165
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Value changes are not supported when valueConverter is not set"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextFormatter$2;->this$0:Ljavafx/scene/control/TextFormatter;

    invoke-static {v1}, Ljavafx/scene/control/TextFormatter;->access$100(Ljavafx/scene/control/TextFormatter;)V

    .line 168
    return-void
.end method
