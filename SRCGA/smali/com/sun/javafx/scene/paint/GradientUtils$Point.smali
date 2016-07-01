.class public Lcom/sun/javafx/scene/paint/GradientUtils$Point;
.super Ljava/lang/Object;
.source "GradientUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/paint/GradientUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point"
.end annotation


# static fields
.field public static final MAX:Lcom/sun/javafx/scene/paint/GradientUtils$Point;

.field public static final MIN:Lcom/sun/javafx/scene/paint/GradientUtils$Point;


# instance fields
.field public proportional:Z

.field public value:D


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 45
    new-instance v0, Lcom/sun/javafx/scene/paint/GradientUtils$Point;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/scene/paint/GradientUtils$Point;-><init>(DZ)V

    sput-object v0, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->MIN:Lcom/sun/javafx/scene/paint/GradientUtils$Point;

    .line 46
    new-instance v0, Lcom/sun/javafx/scene/paint/GradientUtils$Point;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/scene/paint/GradientUtils$Point;-><init>(DZ)V

    sput-object v0, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->MAX:Lcom/sun/javafx/scene/paint/GradientUtils$Point;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/paint/GradientUtils$Point;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(DZ)V
    .locals 9

    .prologue
    .line 55
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/paint/GradientUtils$Point;
    move-wide v2, p1

    .local v2, "value":D
    move v4, p3

    .local v4, "proportional":Z
    move-object v5, v1

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 56
    move-object v5, v1

    move-wide v6, v2

    iput-wide v6, v5, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->value:D

    .line 57
    move-object v5, v1

    move v6, v4

    iput-boolean v6, v5, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->proportional:Z

    .line 58
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/paint/GradientUtils$Point;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->value:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", proportional = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->proportional:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/paint/GradientUtils$Point;
    return-object v0
.end method
