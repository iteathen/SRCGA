.class public final enum Lcom/sun/javafx/geom/Path2D$CornerPrefix;
.super Ljava/lang/Enum;
.source "Path2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/geom/Path2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CornerPrefix"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/javafx/geom/Path2D$CornerPrefix;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/javafx/geom/Path2D$CornerPrefix;

.field public static final enum CORNER_ONLY:Lcom/sun/javafx/geom/Path2D$CornerPrefix;

.field public static final enum LINE_THEN_CORNER:Lcom/sun/javafx/geom/Path2D$CornerPrefix;

.field public static final enum MOVE_THEN_CORNER:Lcom/sun/javafx/geom/Path2D$CornerPrefix;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 68
    new-instance v0, Lcom/sun/javafx/geom/Path2D$CornerPrefix;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "CORNER_ONLY"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/geom/Path2D$CornerPrefix;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/geom/Path2D$CornerPrefix;->CORNER_ONLY:Lcom/sun/javafx/geom/Path2D$CornerPrefix;

    .line 69
    new-instance v0, Lcom/sun/javafx/geom/Path2D$CornerPrefix;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MOVE_THEN_CORNER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/geom/Path2D$CornerPrefix;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/geom/Path2D$CornerPrefix;->MOVE_THEN_CORNER:Lcom/sun/javafx/geom/Path2D$CornerPrefix;

    .line 70
    new-instance v0, Lcom/sun/javafx/geom/Path2D$CornerPrefix;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "LINE_THEN_CORNER"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/geom/Path2D$CornerPrefix;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/geom/Path2D$CornerPrefix;->LINE_THEN_CORNER:Lcom/sun/javafx/geom/Path2D$CornerPrefix;

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sun/javafx/geom/Path2D$CornerPrefix;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/javafx/geom/Path2D$CornerPrefix;->CORNER_ONLY:Lcom/sun/javafx/geom/Path2D$CornerPrefix;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/javafx/geom/Path2D$CornerPrefix;->MOVE_THEN_CORNER:Lcom/sun/javafx/geom/Path2D$CornerPrefix;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/javafx/geom/Path2D$CornerPrefix;->LINE_THEN_CORNER:Lcom/sun/javafx/geom/Path2D$CornerPrefix;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/geom/Path2D$CornerPrefix;->$VALUES:[Lcom/sun/javafx/geom/Path2D$CornerPrefix;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D$CornerPrefix;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/javafx/geom/Path2D$CornerPrefix;
    .locals 3

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/javafx/geom/Path2D$CornerPrefix;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/geom/Path2D$CornerPrefix;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/javafx/geom/Path2D$CornerPrefix;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/sun/javafx/geom/Path2D$CornerPrefix;->$VALUES:[Lcom/sun/javafx/geom/Path2D$CornerPrefix;

    invoke-virtual {v0}, [Lcom/sun/javafx/geom/Path2D$CornerPrefix;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/javafx/geom/Path2D$CornerPrefix;

    return-object v0
.end method
