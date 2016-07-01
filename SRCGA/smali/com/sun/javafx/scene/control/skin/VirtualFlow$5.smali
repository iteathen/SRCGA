.class synthetic Lcom/sun/javafx/scene/control/skin/VirtualFlow$5;
.super Ljava/lang/Object;
.source "VirtualFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/VirtualFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sun$javafx$scene$traversal$Direction:[I

.field static final synthetic $SwitchMap$javafx$scene$input$ScrollEvent$HorizontalTextScrollUnits:[I

.field static final synthetic $SwitchMap$javafx$scene$input$ScrollEvent$VerticalTextScrollUnits:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 832
    invoke-static {}, Lcom/sun/javafx/scene/traversal/Direction;->values()[Lcom/sun/javafx/scene/traversal/Direction;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$5;->$SwitchMap$com$sun$javafx$scene$traversal$Direction:[I

    :try_start_0
    sget-object v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$5;->$SwitchMap$com$sun$javafx$scene$traversal$Direction:[I

    sget-object v2, Lcom/sun/javafx/scene/traversal/Direction;->PREVIOUS:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/traversal/Direction;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$5;->$SwitchMap$com$sun$javafx$scene$traversal$Direction:[I

    sget-object v2, Lcom/sun/javafx/scene/traversal/Direction;->NEXT:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/traversal/Direction;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$5;->$SwitchMap$com$sun$javafx$scene$traversal$Direction:[I

    sget-object v2, Lcom/sun/javafx/scene/traversal/Direction;->NEXT_IN_LINE:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/traversal/Direction;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 575
    :goto_2
    invoke-static {}, Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;->values()[Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$5;->$SwitchMap$javafx$scene$input$ScrollEvent$HorizontalTextScrollUnits:[I

    :try_start_3
    sget-object v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$5;->$SwitchMap$javafx$scene$input$ScrollEvent$HorizontalTextScrollUnits:[I

    sget-object v2, Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;->CHARACTERS:Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;

    invoke-virtual {v2}, Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$5;->$SwitchMap$javafx$scene$input$ScrollEvent$HorizontalTextScrollUnits:[I

    sget-object v2, Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;->NONE:Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;

    invoke-virtual {v2}, Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 545
    :goto_4
    invoke-static {}, Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;->values()[Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$5;->$SwitchMap$javafx$scene$input$ScrollEvent$VerticalTextScrollUnits:[I

    :try_start_5
    sget-object v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$5;->$SwitchMap$javafx$scene$input$ScrollEvent$VerticalTextScrollUnits:[I

    sget-object v2, Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;->PAGES:Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

    invoke-virtual {v2}, Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$5;->$SwitchMap$javafx$scene$input$ScrollEvent$VerticalTextScrollUnits:[I

    sget-object v2, Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;->LINES:Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

    invoke-virtual {v2}, Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    sget-object v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$5;->$SwitchMap$javafx$scene$input$ScrollEvent$VerticalTextScrollUnits:[I

    sget-object v2, Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;->NONE:Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

    invoke-virtual {v2}, Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_7
    return-void

    .line 832
    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v0, v1

    goto :goto_2

    .line 575
    :catch_3
    move-exception v1

    move-object v0, v1

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v0, v1

    goto :goto_4

    .line 545
    :catch_5
    move-exception v1

    move-object v0, v1

    goto :goto_5

    :catch_6
    move-exception v1

    move-object v0, v1

    goto :goto_6

    :catch_7
    move-exception v1

    move-object v0, v1

    goto :goto_7
.end method
