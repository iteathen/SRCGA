.class public Ljavafx/scene/transform/NonInvertibleTransformException;
.super Ljava/lang/Exception;
.source "NonInvertibleTransformException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "message"
        .end annotation
    .end param

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/NonInvertibleTransformException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method
