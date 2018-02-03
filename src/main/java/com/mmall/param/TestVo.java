package com.mmall.param;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

/**
 * @Author: Jay
 * @Date: Created in 16:22 2018/2/1
 * @Modified By:
 */

@Getter
@Setter
public class TestVo {

    @NotBlank
    private String msg;

    @NotNull(message = "id不能为空")
    @Max(value=10,message = "id不能大于10")
    @Min(value = 0,message = "id不能小于0")
    private Integer id;

//    @NotEmpty
//    private List<String> str;

}
