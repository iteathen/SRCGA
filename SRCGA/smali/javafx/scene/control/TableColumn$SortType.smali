.class public final enum Ljavafx/scene/control/TableColumn$SortType;
.super Ljava/lang/Enum;
.source "TableColumn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TableColumn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/control/TableColumn$SortType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/control/TableColumn$SortType;

.field public static final enum ASCENDING:Ljavafx/scene/control/TableColumn$SortType;

.field public static final enum DESCENDING:Ljavafx/scene/control/TableColumn$SortType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 848
    new-instance v0, Ljavafx/scene/control/TableColumn$SortType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "ASCENDING"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/TableColumn$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/control/TableColumn$SortType;->ASCENDING:Ljavafx/scene/control/TableColumn$SortType;

    .line 853
    new-instance v0, Ljavafx/scene/control/TableColumn$SortType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DESCENDING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/TableColumn$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/control/TableColumn$SortType;->DESCENDING:Ljavafx/scene/control/TableColumn$SortType;

    .line 844
    const/4 v0, 0x2

    new-array v0, v0, [Ljavafx/scene/control/TableColumn$SortType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/control/TableColumn$SortType;->ASCENDING:Ljavafx/scene/control/TableColumn$SortType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/control/TableColumn$SortType;->DESCENDING:Ljavafx/scene/control/TableColumn$SortType;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/control/TableColumn$SortType;->$VALUES:[Ljavafx/scene/control/TableColumn$SortType;

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
    .line 844
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn$SortType;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/control/TableColumn$SortType;
    .locals 3

    .prologue
    .line 844
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/control/TableColumn$SortType;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TableColumn$SortType;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/control/TableColumn$SortType;
    .locals 1

    .prologue
    .line 844
    sget-object v0, Ljavafx/scene/control/TableColumn$SortType;->$VALUES:[Ljavafx/scene/control/TableColumn$SortType;

    invoke-virtual {v0}, [Ljavafx/scene/control/TableColumn$SortType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/control/TableColumn$SortType;

    return-object v0
.end method
