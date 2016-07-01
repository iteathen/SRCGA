.class final enum Ljavafx/scene/control/TableUtil$SortEventType;
.super Ljava/lang/Enum;
.source "TableUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TableUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SortEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/control/TableUtil$SortEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/control/TableUtil$SortEventType;

.field public static final enum COLUMN_COMPARATOR_CHANGE:Ljavafx/scene/control/TableUtil$SortEventType;

.field public static final enum COLUMN_SORTABLE_CHANGE:Ljavafx/scene/control/TableUtil$SortEventType;

.field public static final enum COLUMN_SORT_TYPE_CHANGE:Ljavafx/scene/control/TableUtil$SortEventType;

.field public static final enum SORT_ORDER_CHANGE:Ljavafx/scene/control/TableUtil$SortEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 174
    new-instance v0, Ljavafx/scene/control/TableUtil$SortEventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SORT_ORDER_CHANGE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/TableUtil$SortEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/control/TableUtil$SortEventType;->SORT_ORDER_CHANGE:Ljavafx/scene/control/TableUtil$SortEventType;

    .line 175
    new-instance v0, Ljavafx/scene/control/TableUtil$SortEventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "COLUMN_SORT_TYPE_CHANGE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/TableUtil$SortEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/control/TableUtil$SortEventType;->COLUMN_SORT_TYPE_CHANGE:Ljavafx/scene/control/TableUtil$SortEventType;

    .line 176
    new-instance v0, Ljavafx/scene/control/TableUtil$SortEventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "COLUMN_SORTABLE_CHANGE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/TableUtil$SortEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/control/TableUtil$SortEventType;->COLUMN_SORTABLE_CHANGE:Ljavafx/scene/control/TableUtil$SortEventType;

    .line 177
    new-instance v0, Ljavafx/scene/control/TableUtil$SortEventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "COLUMN_COMPARATOR_CHANGE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/TableUtil$SortEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/control/TableUtil$SortEventType;->COLUMN_COMPARATOR_CHANGE:Ljavafx/scene/control/TableUtil$SortEventType;

    .line 173
    const/4 v0, 0x4

    new-array v0, v0, [Ljavafx/scene/control/TableUtil$SortEventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/control/TableUtil$SortEventType;->SORT_ORDER_CHANGE:Ljavafx/scene/control/TableUtil$SortEventType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/control/TableUtil$SortEventType;->COLUMN_SORT_TYPE_CHANGE:Ljavafx/scene/control/TableUtil$SortEventType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/control/TableUtil$SortEventType;->COLUMN_SORTABLE_CHANGE:Ljavafx/scene/control/TableUtil$SortEventType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljavafx/scene/control/TableUtil$SortEventType;->COLUMN_COMPARATOR_CHANGE:Ljavafx/scene/control/TableUtil$SortEventType;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/control/TableUtil$SortEventType;->$VALUES:[Ljavafx/scene/control/TableUtil$SortEventType;

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
    .line 173
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableUtil$SortEventType;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/control/TableUtil$SortEventType;
    .locals 3

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/control/TableUtil$SortEventType;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TableUtil$SortEventType;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/control/TableUtil$SortEventType;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Ljavafx/scene/control/TableUtil$SortEventType;->$VALUES:[Ljavafx/scene/control/TableUtil$SortEventType;

    invoke-virtual {v0}, [Ljavafx/scene/control/TableUtil$SortEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/control/TableUtil$SortEventType;

    return-object v0
.end method
