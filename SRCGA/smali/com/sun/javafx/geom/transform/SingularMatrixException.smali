.class public Lcom/sun/javafx/geom/transform/SingularMatrixException;
.super Ljava/lang/RuntimeException;
.source "SingularMatrixException.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/SingularMatrixException;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/transform/SingularMatrixException;
    move-object v1, p1

    .local v1, "string":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method
