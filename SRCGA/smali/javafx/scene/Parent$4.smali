.class synthetic Ljavafx/scene/Parent$4;
.super Ljava/lang/Object;
.source "Parent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Parent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sun$javafx$scene$LayoutFlags:[I

.field static final synthetic $SwitchMap$javafx$scene$AccessibleAttribute:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 1800
    invoke-static {}, Ljavafx/scene/AccessibleAttribute;->values()[Ljavafx/scene/AccessibleAttribute;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Ljavafx/scene/Parent$4;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    :try_start_0
    sget-object v1, Ljavafx/scene/Parent$4;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    sget-object v2, Ljavafx/scene/AccessibleAttribute;->CHILDREN:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v2}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1063
    :goto_0
    invoke-static {}, Lcom/sun/javafx/scene/LayoutFlags;->values()[Lcom/sun/javafx/scene/LayoutFlags;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Ljavafx/scene/Parent$4;->$SwitchMap$com$sun$javafx$scene$LayoutFlags:[I

    :try_start_1
    sget-object v1, Ljavafx/scene/Parent$4;->$SwitchMap$com$sun$javafx$scene$LayoutFlags:[I

    sget-object v2, Lcom/sun/javafx/scene/LayoutFlags;->CLEAN:Lcom/sun/javafx/scene/LayoutFlags;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/LayoutFlags;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Ljavafx/scene/Parent$4;->$SwitchMap$com$sun$javafx$scene$LayoutFlags:[I

    sget-object v2, Lcom/sun/javafx/scene/LayoutFlags;->NEEDS_LAYOUT:Lcom/sun/javafx/scene/LayoutFlags;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/LayoutFlags;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Ljavafx/scene/Parent$4;->$SwitchMap$com$sun$javafx$scene$LayoutFlags:[I

    sget-object v2, Lcom/sun/javafx/scene/LayoutFlags;->DIRTY_BRANCH:Lcom/sun/javafx/scene/LayoutFlags;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/LayoutFlags;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    return-void

    .line 1800
    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_0

    .line 1063
    :catch_1
    move-exception v1

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v0, v1

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v0, v1

    goto :goto_3
.end method
