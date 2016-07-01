.class final Ljavafx/scene/control/TextFormatter$1;
.super Ljavafx/util/StringConverter;
.source "TextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TextFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/util/StringConverter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$1;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/util/StringConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TextFormatter$1;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextFormatter$1;
    return-object v0
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$1;
    move-object v1, p1

    .local v1, "string":Ljava/lang/String;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextFormatter$1;
    return-object v0
.end method

.method public bridge synthetic toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TextFormatter$1;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextFormatter$1;
    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter$1;
    move-object v1, p1

    .local v1, "object":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    const-string v2, ""

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TextFormatter$1;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TextFormatter$1;
    :cond_0
    move-object v2, v1

    goto :goto_0
.end method
