.class public final enum Ljavafx/scene/transform/MatrixType;
.super Ljava/lang/Enum;
.source "MatrixType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/transform/MatrixType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/transform/MatrixType;

.field public static final enum MT_2D_2x3:Ljavafx/scene/transform/MatrixType;

.field public static final enum MT_2D_3x3:Ljavafx/scene/transform/MatrixType;

.field public static final enum MT_3D_3x4:Ljavafx/scene/transform/MatrixType;

.field public static final enum MT_3D_4x4:Ljavafx/scene/transform/MatrixType;


# instance fields
.field private cols:I

.field private rows:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 41
    new-instance v0, Ljavafx/scene/transform/MatrixType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "MT_2D_2x3"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/scene/transform/MatrixType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljavafx/scene/transform/MatrixType;->MT_2D_2x3:Ljavafx/scene/transform/MatrixType;

    .line 52
    new-instance v0, Ljavafx/scene/transform/MatrixType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "MT_2D_3x3"

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x3

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/scene/transform/MatrixType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljavafx/scene/transform/MatrixType;->MT_2D_3x3:Ljavafx/scene/transform/MatrixType;

    .line 63
    new-instance v0, Ljavafx/scene/transform/MatrixType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "MT_3D_3x4"

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/scene/transform/MatrixType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljavafx/scene/transform/MatrixType;->MT_3D_3x4:Ljavafx/scene/transform/MatrixType;

    .line 75
    new-instance v0, Ljavafx/scene/transform/MatrixType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "MT_3D_4x4"

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x4

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/scene/transform/MatrixType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljavafx/scene/transform/MatrixType;->MT_3D_4x4:Ljavafx/scene/transform/MatrixType;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Ljavafx/scene/transform/MatrixType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/transform/MatrixType;->MT_2D_2x3:Ljavafx/scene/transform/MatrixType;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/transform/MatrixType;->MT_2D_3x3:Ljavafx/scene/transform/MatrixType;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/transform/MatrixType;->MT_3D_3x4:Ljavafx/scene/transform/MatrixType;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x3

    sget-object v3, Ljavafx/scene/transform/MatrixType;->MT_3D_4x4:Ljavafx/scene/transform/MatrixType;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/transform/MatrixType;->$VALUES:[Ljavafx/scene/transform/MatrixType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/MatrixType;
    move-object v1, p1

    move v2, p2

    move v3, p3

    .local v3, "rows":I
    move v4, p4

    .local v4, "cols":I
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    move-object v5, v0

    move v6, v3

    iput v6, v5, Ljavafx/scene/transform/MatrixType;->rows:I

    .line 82
    move-object v5, v0

    move v6, v4

    iput v6, v5, Ljavafx/scene/transform/MatrixType;->cols:I

    .line 83
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/transform/MatrixType;
    .locals 3

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/transform/MatrixType;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/transform/MatrixType;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/transform/MatrixType;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Ljavafx/scene/transform/MatrixType;->$VALUES:[Ljavafx/scene/transform/MatrixType;

    invoke-virtual {v0}, [Ljavafx/scene/transform/MatrixType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/transform/MatrixType;

    return-object v0
.end method


# virtual methods
.method public columns()I
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/MatrixType;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/transform/MatrixType;->cols:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/MatrixType;
    return v0
.end method

.method public elements()I
    .locals 3

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/MatrixType;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/transform/MatrixType;->rows:I

    move-object v2, v0

    iget v2, v2, Ljavafx/scene/transform/MatrixType;->cols:I

    mul-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/MatrixType;
    return v0
.end method

.method public is2D()Z
    .locals 3

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/MatrixType;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/transform/MatrixType;->MT_2D_2x3:Ljavafx/scene/transform/MatrixType;

    if-eq v1, v2, :cond_0

    move-object v1, v0

    sget-object v2, Ljavafx/scene/transform/MatrixType;->MT_2D_3x3:Ljavafx/scene/transform/MatrixType;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/MatrixType;
    return v0

    .restart local v0    # "this":Ljavafx/scene/transform/MatrixType;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public rows()I
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/MatrixType;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/transform/MatrixType;->rows:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/transform/MatrixType;
    return v0
.end method
