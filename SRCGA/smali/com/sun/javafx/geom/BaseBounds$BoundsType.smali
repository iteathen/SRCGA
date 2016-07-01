.class public final enum Lcom/sun/javafx/geom/BaseBounds$BoundsType;
.super Ljava/lang/Enum;
.source "BaseBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/geom/BaseBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BoundsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/javafx/geom/BaseBounds$BoundsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/javafx/geom/BaseBounds$BoundsType;

.field public static final enum BOX:Lcom/sun/javafx/geom/BaseBounds$BoundsType;

.field public static final enum RECTANGLE:Lcom/sun/javafx/geom/BaseBounds$BoundsType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 47
    new-instance v0, Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "RECTANGLE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/geom/BaseBounds$BoundsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/geom/BaseBounds$BoundsType;->RECTANGLE:Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    .line 48
    new-instance v0, Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "BOX"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/geom/BaseBounds$BoundsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/geom/BaseBounds$BoundsType;->BOX:Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/javafx/geom/BaseBounds$BoundsType;->RECTANGLE:Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/javafx/geom/BaseBounds$BoundsType;->BOX:Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/geom/BaseBounds$BoundsType;->$VALUES:[Lcom/sun/javafx/geom/BaseBounds$BoundsType;

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
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BaseBounds$BoundsType;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/javafx/geom/BaseBounds$BoundsType;
    .locals 3

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/javafx/geom/BaseBounds$BoundsType;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/sun/javafx/geom/BaseBounds$BoundsType;->$VALUES:[Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    invoke-virtual {v0}, [Lcom/sun/javafx/geom/BaseBounds$BoundsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    return-object v0
.end method
