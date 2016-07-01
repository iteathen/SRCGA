.class public Lcom/sun/javafx/scene/layout/region/Margins;
.super Ljava/lang/Object;
.source "Margins.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/layout/region/Margins$SequenceConverter;,
        Lcom/sun/javafx/scene/layout/region/Margins$Converter;,
        Lcom/sun/javafx/scene/layout/region/Margins$Holder;
    }
.end annotation


# instance fields
.field final bottom:D

.field final left:D

.field final proportional:Z

.field final right:D

.field final top:D


# direct methods
.method public constructor <init>(DDDDZ)V
    .locals 15

    .prologue
    .line 65
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/layout/region/Margins;
    move-wide/from16 v2, p1

    .local v2, "top":D
    move-wide/from16 v4, p3

    .local v4, "right":D
    move-wide/from16 v6, p5

    .local v6, "bottom":D
    move-wide/from16 v8, p7

    .local v8, "left":D
    move/from16 v10, p9

    .local v10, "proportional":Z
    move-object v11, v1

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 66
    move-object v11, v1

    move-wide v12, v2

    iput-wide v12, v11, Lcom/sun/javafx/scene/layout/region/Margins;->top:D

    .line 67
    move-object v11, v1

    move-wide v12, v4

    iput-wide v12, v11, Lcom/sun/javafx/scene/layout/region/Margins;->right:D

    .line 68
    move-object v11, v1

    move-wide v12, v6

    iput-wide v12, v11, Lcom/sun/javafx/scene/layout/region/Margins;->bottom:D

    .line 69
    move-object v11, v1

    move-wide v12, v8

    iput-wide v12, v11, Lcom/sun/javafx/scene/layout/region/Margins;->left:D

    .line 70
    move-object v11, v1

    move v12, v10

    iput-boolean v12, v11, Lcom/sun/javafx/scene/layout/region/Margins;->proportional:Z

    .line 71
    return-void
.end method


# virtual methods
.method public final getBottom()D
    .locals 3

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/Margins;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/layout/region/Margins;->bottom:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/Margins;
    return-wide v0
.end method

.method public final getLeft()D
    .locals 3

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/Margins;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/layout/region/Margins;->left:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/Margins;
    return-wide v0
.end method

.method public final getRight()D
    .locals 3

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/Margins;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/layout/region/Margins;->right:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/Margins;
    return-wide v0
.end method

.method public final getTop()D
    .locals 3

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/Margins;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/layout/region/Margins;->top:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/Margins;
    return-wide v0
.end method

.method public final isProportional()Z
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/Margins;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/layout/region/Margins;->proportional:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/Margins;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/Margins;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "top: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/scene/layout/region/Margins;->top:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nright: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/scene/layout/region/Margins;->right:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nbottom: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/scene/layout/region/Margins;->bottom:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nleft: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/scene/layout/region/Margins;->left:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/Margins;
    return-object v0
.end method
