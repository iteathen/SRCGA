.class public final enum Ljavafx/scene/chart/LineChart$SortingPolicy;
.super Ljava/lang/Enum;
.source "LineChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/LineChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortingPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/chart/LineChart$SortingPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/chart/LineChart$SortingPolicy;

.field public static final enum NONE:Ljavafx/scene/chart/LineChart$SortingPolicy;

.field public static final enum X_AXIS:Ljavafx/scene/chart/LineChart$SortingPolicy;

.field public static final enum Y_AXIS:Ljavafx/scene/chart/LineChart$SortingPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 648
    new-instance v0, Ljavafx/scene/chart/LineChart$SortingPolicy;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/chart/LineChart$SortingPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/chart/LineChart$SortingPolicy;->NONE:Ljavafx/scene/chart/LineChart$SortingPolicy;

    .line 652
    new-instance v0, Ljavafx/scene/chart/LineChart$SortingPolicy;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "X_AXIS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/scene/chart/LineChart$SortingPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/chart/LineChart$SortingPolicy;->X_AXIS:Ljavafx/scene/chart/LineChart$SortingPolicy;

    .line 656
    new-instance v0, Ljavafx/scene/chart/LineChart$SortingPolicy;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "Y_AXIS"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/scene/chart/LineChart$SortingPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/chart/LineChart$SortingPolicy;->Y_AXIS:Ljavafx/scene/chart/LineChart$SortingPolicy;

    .line 644
    const/4 v0, 0x3

    new-array v0, v0, [Ljavafx/scene/chart/LineChart$SortingPolicy;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/chart/LineChart$SortingPolicy;->NONE:Ljavafx/scene/chart/LineChart$SortingPolicy;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/chart/LineChart$SortingPolicy;->X_AXIS:Ljavafx/scene/chart/LineChart$SortingPolicy;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/chart/LineChart$SortingPolicy;->Y_AXIS:Ljavafx/scene/chart/LineChart$SortingPolicy;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/chart/LineChart$SortingPolicy;->$VALUES:[Ljavafx/scene/chart/LineChart$SortingPolicy;

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
    .line 644
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/LineChart$SortingPolicy;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/chart/LineChart$SortingPolicy;
    .locals 3

    .prologue
    .line 644
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/chart/LineChart$SortingPolicy;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/chart/LineChart$SortingPolicy;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/chart/LineChart$SortingPolicy;
    .locals 1

    .prologue
    .line 644
    sget-object v0, Ljavafx/scene/chart/LineChart$SortingPolicy;->$VALUES:[Ljavafx/scene/chart/LineChart$SortingPolicy;

    invoke-virtual {v0}, [Ljavafx/scene/chart/LineChart$SortingPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/chart/LineChart$SortingPolicy;

    return-object v0
.end method
