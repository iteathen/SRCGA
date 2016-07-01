.class final enum Ljavafx/scene/chart/StackedAreaChart$PartOf;
.super Ljava/lang/Enum;
.source "StackedAreaChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/StackedAreaChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PartOf"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/chart/StackedAreaChart$PartOf;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/chart/StackedAreaChart$PartOf;

.field public static final enum CURRENT:Ljavafx/scene/chart/StackedAreaChart$PartOf;

.field public static final enum PREVIOUS:Ljavafx/scene/chart/StackedAreaChart$PartOf;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 870
    new-instance v0, Ljavafx/scene/chart/StackedAreaChart$PartOf;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "CURRENT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/chart/StackedAreaChart$PartOf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/chart/StackedAreaChart$PartOf;->CURRENT:Ljavafx/scene/chart/StackedAreaChart$PartOf;

    .line 871
    new-instance v0, Ljavafx/scene/chart/StackedAreaChart$PartOf;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "PREVIOUS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/scene/chart/StackedAreaChart$PartOf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/chart/StackedAreaChart$PartOf;->PREVIOUS:Ljavafx/scene/chart/StackedAreaChart$PartOf;

    .line 869
    const/4 v0, 0x2

    new-array v0, v0, [Ljavafx/scene/chart/StackedAreaChart$PartOf;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/chart/StackedAreaChart$PartOf;->CURRENT:Ljavafx/scene/chart/StackedAreaChart$PartOf;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/chart/StackedAreaChart$PartOf;->PREVIOUS:Ljavafx/scene/chart/StackedAreaChart$PartOf;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/chart/StackedAreaChart$PartOf;->$VALUES:[Ljavafx/scene/chart/StackedAreaChart$PartOf;

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
    .line 869
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedAreaChart$PartOf;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/chart/StackedAreaChart$PartOf;
    .locals 3

    .prologue
    .line 869
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/chart/StackedAreaChart$PartOf;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/chart/StackedAreaChart$PartOf;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/chart/StackedAreaChart$PartOf;
    .locals 1

    .prologue
    .line 869
    sget-object v0, Ljavafx/scene/chart/StackedAreaChart$PartOf;->$VALUES:[Ljavafx/scene/chart/StackedAreaChart$PartOf;

    invoke-virtual {v0}, [Ljavafx/scene/chart/StackedAreaChart$PartOf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/chart/StackedAreaChart$PartOf;

    return-object v0
.end method
