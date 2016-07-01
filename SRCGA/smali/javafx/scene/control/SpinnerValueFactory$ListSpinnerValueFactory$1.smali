.class Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$1;
.super Ljavafx/util/StringConverter;
.source "SpinnerValueFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;-><init>(Ljavafx/collections/ObservableList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/util/StringConverter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;


# direct methods
.method constructor <init>(Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;)V
    .locals 4

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$1;, "Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$1;->this$0:Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/util/StringConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$1;, "Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$1;"
    move-object v1, p1

    .local v1, "string":Ljava/lang/String;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$1;, "Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$1;"
    return-object v0
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$1;, "Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$1;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 261
    const-string v2, ""

    move-object v0, v2

    .line 263
    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$1;, "Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$1;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$1;, "Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$1;"
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method
