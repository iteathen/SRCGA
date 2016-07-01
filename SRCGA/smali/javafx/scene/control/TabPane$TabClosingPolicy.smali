.class public final enum Ljavafx/scene/control/TabPane$TabClosingPolicy;
.super Ljava/lang/Enum;
.source "TabPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TabPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabClosingPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/control/TabPane$TabClosingPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/control/TabPane$TabClosingPolicy;

.field public static final enum ALL_TABS:Ljavafx/scene/control/TabPane$TabClosingPolicy;

.field public static final enum SELECTED_TAB:Ljavafx/scene/control/TabPane$TabClosingPolicy;

.field public static final enum UNAVAILABLE:Ljavafx/scene/control/TabPane$TabClosingPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 823
    new-instance v0, Ljavafx/scene/control/TabPane$TabClosingPolicy;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SELECTED_TAB"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/TabPane$TabClosingPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/control/TabPane$TabClosingPolicy;->SELECTED_TAB:Ljavafx/scene/control/TabPane$TabClosingPolicy;

    .line 828
    new-instance v0, Ljavafx/scene/control/TabPane$TabClosingPolicy;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "ALL_TABS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/TabPane$TabClosingPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/control/TabPane$TabClosingPolicy;->ALL_TABS:Ljavafx/scene/control/TabPane$TabClosingPolicy;

    .line 833
    new-instance v0, Ljavafx/scene/control/TabPane$TabClosingPolicy;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "UNAVAILABLE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/TabPane$TabClosingPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/control/TabPane$TabClosingPolicy;->UNAVAILABLE:Ljavafx/scene/control/TabPane$TabClosingPolicy;

    .line 816
    const/4 v0, 0x3

    new-array v0, v0, [Ljavafx/scene/control/TabPane$TabClosingPolicy;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/control/TabPane$TabClosingPolicy;->SELECTED_TAB:Ljavafx/scene/control/TabPane$TabClosingPolicy;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/control/TabPane$TabClosingPolicy;->ALL_TABS:Ljavafx/scene/control/TabPane$TabClosingPolicy;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/control/TabPane$TabClosingPolicy;->UNAVAILABLE:Ljavafx/scene/control/TabPane$TabClosingPolicy;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/control/TabPane$TabClosingPolicy;->$VALUES:[Ljavafx/scene/control/TabPane$TabClosingPolicy;

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
    .line 816
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane$TabClosingPolicy;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/control/TabPane$TabClosingPolicy;
    .locals 3

    .prologue
    .line 816
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/control/TabPane$TabClosingPolicy;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TabPane$TabClosingPolicy;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/control/TabPane$TabClosingPolicy;
    .locals 1

    .prologue
    .line 816
    sget-object v0, Ljavafx/scene/control/TabPane$TabClosingPolicy;->$VALUES:[Ljavafx/scene/control/TabPane$TabClosingPolicy;

    invoke-virtual {v0}, [Ljavafx/scene/control/TabPane$TabClosingPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/control/TabPane$TabClosingPolicy;

    return-object v0
.end method
