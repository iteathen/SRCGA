.class synthetic Lcom/sun/javafx/scene/control/TableColumnComparatorBase$1;
.super Ljava/lang/Object;
.source "TableColumnComparatorBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/TableColumnComparatorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$javafx$scene$control$TableColumn$SortType:[I

.field static final synthetic $SwitchMap$javafx$scene$control$TreeTableColumn$SortType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 148
    invoke-static {}, Ljavafx/scene/control/TreeTableColumn$SortType;->values()[Ljavafx/scene/control/TreeTableColumn$SortType;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/javafx/scene/control/TableColumnComparatorBase$1;->$SwitchMap$javafx$scene$control$TreeTableColumn$SortType:[I

    :try_start_0
    sget-object v1, Lcom/sun/javafx/scene/control/TableColumnComparatorBase$1;->$SwitchMap$javafx$scene$control$TreeTableColumn$SortType:[I

    sget-object v2, Ljavafx/scene/control/TreeTableColumn$SortType;->ASCENDING:Ljavafx/scene/control/TreeTableColumn$SortType;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableColumn$SortType;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sun/javafx/scene/control/TableColumnComparatorBase$1;->$SwitchMap$javafx$scene$control$TreeTableColumn$SortType:[I

    sget-object v2, Ljavafx/scene/control/TreeTableColumn$SortType;->DESCENDING:Ljavafx/scene/control/TreeTableColumn$SortType;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableColumn$SortType;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    :goto_1
    invoke-static {}, Ljavafx/scene/control/TableColumn$SortType;->values()[Ljavafx/scene/control/TableColumn$SortType;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/javafx/scene/control/TableColumnComparatorBase$1;->$SwitchMap$javafx$scene$control$TableColumn$SortType:[I

    :try_start_2
    sget-object v1, Lcom/sun/javafx/scene/control/TableColumnComparatorBase$1;->$SwitchMap$javafx$scene$control$TableColumn$SortType:[I

    sget-object v2, Ljavafx/scene/control/TableColumn$SortType;->ASCENDING:Ljavafx/scene/control/TableColumn$SortType;

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumn$SortType;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sun/javafx/scene/control/TableColumnComparatorBase$1;->$SwitchMap$javafx$scene$control$TableColumn$SortType:[I

    sget-object v2, Ljavafx/scene/control/TableColumn$SortType;->DESCENDING:Ljavafx/scene/control/TableColumn$SortType;

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumn$SortType;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    return-void

    .line 148
    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v0, v1

    goto :goto_1

    .line 121
    :catch_2
    move-exception v1

    move-object v0, v1

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v0, v1

    goto :goto_3
.end method
